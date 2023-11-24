// This is a very useful piece of software

Fonction oopify(prefix) -> prefix + "oop"

Fonction join(elements, separator)
	VAR result = ""
	VAR len = LEN(elements)

	Pour i = 0 a len faire
		VAR result = result + elements/i
		Si i != len - 1 faire VAR result = result + separator
	fin

	Retourner result
fin

Fonction map(elements, func)
	VAR new_elements = []

	Pour i = 0 a LEN(elements) faire
		APPfin(new_elements, func(elements/i))
	fin

	Retourner new_elements
fin

Afficher("Greetings universe!")

Pour i = 0 a 5 faire
	Afficher(join(map(["l", "sp"], oopify), ", "))
fin