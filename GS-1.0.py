print("Hello, and welcome to the GS-1.0 calculator!\nThis verision of the GS-1.0 is an improved version of the the GS-1.0-beta calculator.\n\nThis version of the GS calulator has 6 basic functions:\nAddition, Subtraction, Multiplication, Division, Modulus Division, and Exponentation.\n\nEach of these is represented by a character: '+','-','*','/','%', and '^'.\n(If you would like to exit this program just type exit for the operator)")
operator_list = ['+', '-', '*', '/']
special_operator_list = ['%', '^']
operator_word_list = ['add', 'subtract', 'multiply', 'divide']
special_operator_word_list = ['What is the number you would like to find the remainder of?: ', 'What is the number you would like to divide by?: ',
                              'What number do you want to have be the base?: ', 'What number do you want the exponent to be?: ']
operator_index = 0
special_operator_index = 0
is_special = 0
num_1 = 0
num_2 = 0
result = 0
exit_code = 0
while 1:
    user_input_operator = input("\nWhat operation would you like to use?: ")

    if user_input_operator in operator_list:
        for i, item in enumerate(operator_list):
            if item == user_input_operator:
                operator_index = i
                is_special = 0
    elif user_input_operator in special_operator_list:
        for b, item in enumerate(special_operator_list):
            if item == user_input_operator:
                special_operator_index = b
                is_special = 1
    elif user_input_operator == 'exit':
        exit()
    else:
        print("Operator not valid!")

    def calculator(word):
        if is_special == 0:
            num_1 = input(
                "\nWhat is the first number you would like to " + word + "?: ")
            num_2 = input(
                "What is the second number you would like to " + word + "?: ")
            if operator_index == 0:
                result = (int(num_1) + int(num_2))
            elif operator_index == 1:
                result = (int(num_1) - int(num_2))
            elif operator_index == 2:
                result = (int(num_1) * int(num_2))
            elif operator_index == 3:
                result = (int(num_1) / int(num_2))
            print("\nYour result is: " + str(result))
        else:
            num_1 = input(special_operator_word_list[(
                special_operator_index + 1)*2 - 2])
            num_2 = input(special_operator_word_list[(
                special_operator_index + 1)*2 - 1])
            if special_operator_index == 0:
                result = (int(num_1) % int(num_2))
            elif special_operator_index == 1:
                result = (int(num_1) ** int(num_2))
            print("\nYour result is: " + str(result) + "\n")

    calculator(operator_word_list[operator_index])
exit()
