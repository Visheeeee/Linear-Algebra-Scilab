clear; close(); clc;
format('v', 5);
A=[0 0 0;0 0 0;0 0 0]
for i=1:3
    for j=1:3
        A(i,j) = input("Enter the values:")
    end
end
disp(A)
for l=1:3
	l(l,l)=1;
end

for i=1:3
	for j=1:3
		s=0;
		if j>=i
			for k=1:i-1
				s=s+L(i,k)*U(k,j);
			end
			U(i,j)=A(i,j)-s;
		else
			for k=1:j-1
				s=s+L(i,k)*U(k,j);
			end
			L(i,j)=(A(i,j)-s)/U(j,j);
		end
	end
end

b=[2;22;5]
c=L\b;
x=U\c;
disp(x, 'Solution of the given equations is:')
