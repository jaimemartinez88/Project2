% pman.pl

%init
pmanAt(1,1,s0).

connected(X1,Y1,X2,Y2):- \+isWall(X2,Y2),
    (Y2 is Y1+1;Y2 is Y1-1),(X1 = X2);
    (X2 is X1+1;X2 is X1-1),(Y1 = Y2).

%connected(1,2,1,1,s0).
isFree(1,2,s0).
isFree(1,3,s0).
ghostAt(4,4,s0).
isWall(0,0).

%action moveRight
%preconditions
poss(moveRight,S):- pmanAt(X,Y,S),isFree(X,Y1,S), connected(X,Y,X,Y1),
                  (Y1 is Y+1),
                  \+ghostAt(X,Y1,S).
poss(moveLeft,S):- pmanAt(X,Y,S),isFree(X,Y1,S), connected(X,Y,X,Y1),
                  (Y1 is Y-1),
                  \+ghostAt(X,Y1,S).
poss(moveUp,S):- pmanAt(X,Y,S),isFree(X1,Y,S), connected(X,Y,X1,Y),
                  (X1 is X+1),
                  \+ghostAt(X1,Y,S).
poss(moveDown,S):- pmanAt(X,Y,S),isFree(X1,Y,S), connected(X,Y,X1,Y),
                  (X1 is X-1),
                  \+ghostAt(X1,Y,S).
%success state axioms moveRight
pmanAt(X,Y,do(A,S)):-pmanAt(X1,Y1,S),
      (
        (A=moveRight,(Y is Y1+1),(X1=X));
        (A=moveLeft,(Y is Y1-1),(X1=X));
        (A=moveUp,(X is X1+1),(Y1=Y));
        (A=moveDown,(X is X1-1),(Y1=Y))
      );
      (
        pmanAt(X,Y,S),
        \+ A=moveRight;
        \+ A=moveLeft;
        \+ A=moveUp;
        \+ A=moveDown
      ).



/*legal axioms*/
  legal(s0).
  legal(do(A,S)):-legal(S),poss(A,S).
