# bash exam.sh 1 1 10
topic=$1
for ((num=$2; num<=$3; num++))
do
	curl -s "https://www.google.com/search?q=examtopics+dp+203+topic+${topic}+question+${num}" -o temp.txt
	exam_url=$(grep -o "https://www.examtopics.com/discussions/microsoft/view/.*-exam-dp-203-topic-${topic}-question-${num}-discussion/" temp.txt)
	start chrome "$exam_url"
	rm temp.txt
done 
