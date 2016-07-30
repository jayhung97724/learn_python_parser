install:
	pip install -r requirements.txt

num = `ls *.jpg | wc -l`
test:
	python3 parser_to_json.py "http://www.gomaji.com/index.php?city=Taipei&tag_id=98" test.json;python3 test.py

clean:
	rm -f gomaji.json Crawler/venv
	rm -f *.jpg
