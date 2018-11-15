function NewChrom = OX(OldChrom, XOVR);
if nargin < 2, XOVR = NaN; end
   
[rows,cols]=size(OldChrom);
NewChrom = zeros(rows,cols);
for row = 1:2:rows
    if rand < XOVR
        OXalgor(OldChrom(row,:),OldChrom(row+1,:))
        OXalgor(OldChrom(row+1,:),OldChrom(row,:))
        NewChrom(row,:) =OXalgor(OldChrom(row,:),OldChrom(row+1,:));
		NewChrom(row+1,:)=OXalgor(OldChrom(row+1,:),OldChrom(row,:));
    else
		NewChrom(row,:)=OldChrom(row,:);
		NewChrom(row+1,:)=OldChrom(row+1,:);
    end
end
end

