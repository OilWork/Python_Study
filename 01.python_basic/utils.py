# 함수, 클래스들 정의

def plus(num1, num2):
    print('plus()실행')
    return num1+num2

def sum_values(*args):
    result = 0 
    for v in args:
        result += v
    return result

class Person:
    
    def __init__(self, name):
        self.name = name

    def __str__(self):
        return f"이름: {self.name}"

if __name__ ==  "__main__":  #main모듈로 실행될 때만 실행될 구문
    print("--------------- __name__ ------------------")
    print(__name__)
    print("--------------------------")
    a = plus(20, 30)
    print('덧셈결과:', a)
    b = sum_values(1,2,3,4,5)
    print('누적합계결과:', b)
    p = Person('홍길동')
    print(p)

# utils.py






