import import_file
from my_module import show_message
import requests


def main():
    print('hello')
    import_file.print_message('this message')
    show_message.show_message('another message')
    request = requests.get('http://httpbin.org/get')
    print(request.json())

def handler(event, context):
    main()
