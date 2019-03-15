M = .5;
 m = 0.2;
 b = 0.1;
 i = 0.006;
 g = 9.8;
 l = 0.3;
 q = ( M + m ) *( i + m * l ^2) -( m * l ) ^2; %simplifica entrada

 num = [ m * l / q 0];
 den = [1 b *( i + m * l ^2) / q -( M + m ) * m * g * l / q -b * m * g * l / q ];
 kd = 1;
 k = 1;
 ki = 1;
 numPID = [ kd k ki ];
 denPID = [1 0];
 numc = conv ( num , denPID );
 denc = @polyadd (conv(denPID,den),conv(numPID,num) );
 
  t =0:0.01:5;
 impulse ( numc , denc , t )
 axis ([0 1.5 0 40])
