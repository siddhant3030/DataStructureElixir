#include<iostream>
#include<string>

using namespace std;

class Stack{
    private:
    int top;
    int arr[5];

    public: 
        stack ()
        {
            top = -1
            for(int i=0; i<5; i++){
                arr[i] = 0;
            }
        }

        bool isEmpty()
        {
            if(top==-1)
                return true;
            else
                return false;
        }

        bool isFull()
        {
            if(top==4)
                return true;
            else
                return false;
        }

        void push(int val)
        {
            if(isFull())
            {
                cout<<"stack overflow"<<endl;
            }
            else
            {
                top++;
                arr[top] = val;
            }

        }

        int pop(int val)
        {
            if(isEmpty)
            {
                cout<<"stack underflow"<<endl;
                return 0;
            }
            else
            {
                int popValue = arr[top];
                arr[top] = 0;
                top--;
                return popValue;
            }
        }
};

int main()
{
    return 0;
}