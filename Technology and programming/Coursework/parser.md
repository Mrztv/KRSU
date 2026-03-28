```json
{
	"KRSU": [
		{
			"ETF": {
				"Telecom": [
					[
						{"name": "test1", "surname": "1", "gender": "male", "age":11},
						{"name": "test2", "surname": "1", "gender": "male", "age":22},
						{"name": "test3", "surname": "1", "gender": "female", "age":33},
						{"name": "test4", "surname": "1", "gender": "female", "age":44}
					],
					[
						{"name": "rwa1", "surname": "2", "gender": "female", "age":11},
						{"name": "rwa2", "surname": "2", "gender": "female", "age":22},
						{"name": "rwa3", "surname": "2", "gender": "male", "age":33},
						{"name": "rwa4", "surname": "2", "gender": "male", "age":44}
					]
				]
			}
		},
		{
			"ARCHITECTURE": {
				"major": [
					[
						{"name": "wet1", "surname": "3", "gender": "male", "age":11},
						{"name": "wet2", "surname": "3", "gender": "male", "age":22},
						{"name": "wet3", "surname": "3", "gender": "female", "age":33},
						{"name": "wet4", "surname": "3", "gender": "female", "age":44}
					],
					[
						{"name": "qws1", "surname": "4", "gender": "male", "age":11},
						{"name": "qws2", "surname": "4", "gender": "male", "age":22},
						{"name": "qws3", "surname": "4", "gender": "female", "age":33},
						{"name": "qws4", "surname": "4", "gender": "female", "age":44}
					]
				]
			}
		}
	]
}
```
Если открывается фигурная скобка то мы уходим на слой ниже
inObject++
Вытащить название переменной из кавычек
Обработать двоеточие 
Если после двоеточия идет фигурная скобка то начинается новый объект
inObject++
Если после двоеточия идет квадратная скобка то начинается массив
inArray++

![[Pasted image 20260307174600.png]]

![[Pasted image 20260307174544.png]]


vector\<university\> root
vector в которым мы сейчас работаем
Если встречается '{' то мы создаем новый мап где есть 