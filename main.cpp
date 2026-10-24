#include <iostream>

using namespace std;



int main()
{
    int a[10000];
    int n;

    cin >> n;
    for (int i = 0; i < n; i++)
    {
        cin >> a[i];
    }
    int x; //số nguyên x cần tìm
    cin >> x;

    int i = 0;
    for (; i < n; i++)
    {
        if (a[i] == x)
        {
            cout << i << endl;
            cout << i + 1 << endl;
            break;
        }
    }
    if (i == n)
    {
        cout << -1;
        return 0;
    }
    int j = n-1;
    for (; j >= 0; j--)
    {
        if (a[j] == x)
        {
            cout << n - 1 -j << endl;
            cout << n - j << endl;
            break;
        }
    }
cout << "Hello world" << endl;

    return 0;
}

