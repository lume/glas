const htmlStrings = new WeakSet()

// This is mostly just an identity template tag function, that for the most part
// returns the same string as if you hadn't applied this tag. The only
// difference is it will join arrays of strings with "" (instead of the default
// ","), so that commas don't appear in your HTML output (f.e. when writing
// something like
//
// html`
//   <ul>
//     ${items.map(i => html`
//       <li>${i}</li>
//     `)}
//   </ul>
// `
//
// to map arrays to elements).
// TODO avoid `any`. This one is tricky.
export function html(parts: TemplateStringsArray, ...expressions: any[]) {
	let string = ''
	let i
	let l

	for (i = 0, l = expressions.length; i < l; i++) {
		string += parts[i]

		// This handles nested html`` calls. For example:
		//
		// html`
		//   <ul>
		//     ${items.map(i => html`
		//       <li>${i.name}</li>
		//     `)}
		//   </ul>
		// `
		//
		// It prevents arrays of strings (from the .map calls) from being
		// concatenated with commas.
		if (Array.isArray(expressions[i]) && htmlStrings.has(expressions[i][0]))
			expressions[i] = expressions[i].join('')

		string += expressions[i]
	}

	string += parts[i]

	const result = new String(string)
	htmlStrings.add(result)
	return result as string
}
