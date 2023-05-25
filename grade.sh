CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

if [[-f student-submission/ListExamples.java]]
then
            echo `ListExamples.java found`
    else
                echo `ListExamples.java not found`
                    echo `Score: 0/4`
                    exit(1)
fi

cp student-submission/ListExamples.java ./GradingArea   #Copy files to compile into grading areas

javac -cp $CPATH GradingArea/*.java     #Compile files

java -cp $CPATH org.junit.runner.JUnitCore TestListExamples > junit.output.txt    #Run junit tests and redirect to file

FAILURES = grep -c 

if [[ $FAILURES -eq 0]]
then 
        echo `All tests passed`
        echo `4/4`
else
    


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
