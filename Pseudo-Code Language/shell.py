

import basic

while True:
    text = input('basic > ')
    
    # If the user input is empty or contains only whitespace, skip to the next iteration
    if text.strip() == "": continue
    
    # Run the user input through the basic interpreter
    result, error = basic.run('<stdin>', text)

    # If an error occurred during the interpretation, print the error message
    if error:
        print(error.as_string())
    # If the interpretation was successful, print the result
    elif result:
        # If the result contains only one element, print the element itself
        if len(result.elements) == 1:
            print(repr(result.elements[0]))
        # If the result contains multiple elements, print the entire result
        else:
            print(repr(result))