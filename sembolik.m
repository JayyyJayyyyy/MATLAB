
fn=@(x)x.*exp(-x)-0.2;
[x2,fndeger,cikis,bilgi]=fzero(fn,)
[x2]=fzero(fn,2)
[x, fndeger]=fminbnd(fn,0,8)