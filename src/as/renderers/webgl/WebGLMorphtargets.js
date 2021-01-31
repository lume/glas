/**
 * @author mrdoob / http://mrdoob.com/
 */

function absNumericalSort(a, b) {
	return Mathf.abs(b[1]) - Mathf.abs(a[1])
}

function WebGLMorphtargets(gl) {
	const influencesList = {}
	const morphInfluences = new Float32Array(8)

	function update(object, geometry, material, program) {
		const objectInfluences = object.morphTargetInfluences

		const length = objectInfluences.length

		const influences = influencesList[geometry.id]

		if (influences === undefined) {
			// initialise list

			influences = []

			for (let i = 0; i < length; i++) {
				influences[i] = [i, 0]
			}

			influencesList[geometry.id] = influences
		}

		const morphTargets = material.morphTargets && geometry.morphAttributes.position
		const morphNormals = material.morphNormals && geometry.morphAttributes.normal

		// Remove current morphAttributes

		for (let i = 0; i < length; i++) {
			const influence = influences[i]

			if (influence[1] !== 0) {
				if (morphTargets) geometry.removeAttribute('morphTarget' + i)
				if (morphNormals) geometry.removeAttribute('morphNormal' + i)
			}
		}

		// Collect influences

		for (let i = 0; i < length; i++) {
			const influence = influences[i]

			influence[0] = i
			influence[1] = objectInfluences[i]
		}

		influences.sort(absNumericalSort)

		// Add morphAttributes

		for (let i = 0; i < 8; i++) {
			const influence = influences[i]

			if (influence) {
				const index = influence[0]
				const value = influence[1]

				if (value) {
					if (morphTargets) geometry.addAttribute('morphTarget' + i, morphTargets[index])
					if (morphNormals) geometry.addAttribute('morphNormal' + i, morphNormals[index])

					morphInfluences[i] = value
					continue
				}
			}

			morphInfluences[i] = 0
		}

		program.getUniforms().setValue(gl, 'morphTargetInfluences', morphInfluences)
	}

	return {
		update: update,
	}
}

export {WebGLMorphtargets}
