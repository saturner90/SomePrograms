#include <iostream>
#include <string>
using namespace std;


class System1
{
public:
	
	System1();													//Default
	//System1( int array[12][12], int cstation);				//2 Vars
	//System1(int array[12][12], int cstation, int tRoutes);	//3 Vars
	~System1();													//Destruct
	
	int tRoutes;
	int location(int aMatrix[12][12], int cstation);
	int recMatrix(int aMatrix[12][12], int cstation, int &tRoutes);
	void test();
	
	
};	

System1::System1()
{
	
}	

System1::~System1()
{
	
}										
//Designed to check each "station" for an open path "1" and 
//will return the first column "track" that it finds. If no
//path is found it will return a 12.
int System1::location(int aMatrix[12][12], int cstation)
{
	int count;
	cout << "In location function now" << endl;

	for(count = 0; count < 12; count++)
	{
		if(aMatrix[cstation][count] == 1)
			return count;
		else if(count == 11)
			return 12;
	}
}

int System1::recMatrix(int aMatrix[12][12], int cstation, int &tRoutes)
{
	int column = 0;
	//int tRoutes = tRoutes;
	cout << "In recMatrix now" << endl;
	
	column = location(aMatrix, cstation);
	if(cstation == 11)
	{
		tRoutes++;
		cout << tRoutes << endl;
		return 0;
	}
	else if(column == 12)
		return 0;
	else
	{
		cout << "Closing a route" << endl;
		aMatrix[cstation][column] = 0;
		aMatrix[column][cstation] = 0;
		recMatrix(aMatrix, cstation, tRoutes);
		cstation = column;
		recMatrix(aMatrix, cstation, tRoutes);
	}
	return 0;
}

void System1::test()
{
	cout << "This should work" << endl;
	return;
}


int main()	//int argc, char **argv
{
	cout << "Starting program" << endl;
	System1 subway;
	int tRoutes = 0;
	int cstation = 0;	//Begin at Station A
	//Subway Stations
	int aMatrix[12][12] = {{0,1,0,0,0,0,0,0,0,0,0,0},  //A
						   {1,0,1,1,1,1,0,0,0,0,0,0},  //B
                           {0,1,0,0,1,0,0,0,0,0,0,0},  //C
                           {0,1,0,0,1,0,0,0,0,0,0,0},  //D
                           {0,1,1,1,0,0,1,1,0,0,0,0},  //E
                           {0,1,0,0,0,0,0,1,0,0,0,0},  //F
                           {0,0,0,0,1,0,0,0,0,0,1,0},  //G
                           {0,0,0,0,1,1,0,0,1,1,1,0},  //H
                           {0,0,0,0,0,0,0,1,0,0,1,0},  //I
                           {0,0,0,0,0,0,0,1,0,0,1,0},  //J
                           {0,0,0,0,0,0,1,1,1,1,0,1},  //K
                           {0,0,0,0,0,0,0,0,0,0,1,0}}; //L
	
	subway.test();
	subway.recMatrix(aMatrix, cstation, tRoutes);
	cout << tRoutes << " routes possible." << endl;
	return 0;
}
