BEGIN TRY

END TRY
BEGIN CATCH

END CATCH


/*
Cursers

DECLARE cur CURSOR FOR -- no need for a @ when declaring
SELECT Id, Description FROM Requests WHERE id IN (1,2,3);

DECLARE @Id int, @description varchar(80), @total decimal(9,2);

OPEN cur;

FETCH NEXT From cur into @id, @description;
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Request id is ' +str(@id);
    SELECT @Total = sum(rl.quantity * p.price)
        from RequestLines RL 
        join products p on p.id = rl.ProductId
        where rl.RequestId = @ID
        group by rl.RequestId
    UPDATE Requests Set
        Total = @Total
        Where Id = @Id;
    Print 'Total is ' +str(@Total)

    FETCH NEXT from cur into @id, @description;
END
CLOSE cur;
DEALLOCATE cur; -- releases the resources
select r.[Description], sum(rl.Quantity * p.price) Total
from Requests r 
    join RequestLines RL 
        on r.id = rl.requestID
    join Products p 
        on p.id = rl.ProductId
    where r.id in (1,2,3)
    group by r.id, r.[Description]
    order by r.ID;

DECLARE @counter int = 1, @Sum int = 0;

WHILE @counter <= 90
BEGIN
    IF @counter % 2 != 0
        BEGIN
            set @counter = @counter + 1;
            CONTINUE;
        END
    Set @sum = @Sum + @counter;
    set @counter = @counter + 1;
END

PRINT 'The sum is ' + str(@sum);
RETURN
DECLARE @counter int = 0;

While @counter < 20
BEGIN
    IF @counter = 7
        break;
    PRINT 'The value of counter is ' + str(@counter);
    SET @counter = @counter + 1;
END

DECLARE @name varchar(30) = 'Greg' + ' ' + 'Doud';

SELECT @name;

DECLARE @color varchar(10) = 'Red';

Select @color;

IF @color = 'red'
    BEGIN 
      PRINT 'The color is red!';
      PRINT 'The color is a deep red!';
      PRINT 'The color is a very deep red!';
    End
ELSE IF @color = 'blue'
    BEGIN
        Print ' The color is Blue'
    End
*/