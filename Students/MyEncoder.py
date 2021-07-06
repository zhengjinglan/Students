# -*-coding:utf-8 -*-
import json
class MyEncoder(json.JSONEncoder):

    def default(obj , bytes):
        if isinstance(obj , bytes):
            return str(obj , encoding = 'utf-8')

        return json.JSONEncoder.default(self , obj)

