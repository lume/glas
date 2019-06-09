// temporary typedef needed for toString to work on numbers. Issue:
// https://github.com/AssemblyScript/assemblyscript/issues/618
interface Number {
	toString(base?: i32): string
}
