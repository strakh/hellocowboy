  539  mkdir hellocowboy
  540  cd hellocowboy/
  541  ls
  542  wget https://erlang.mk/erlang.mk
  543  make -f erlang.mk bootstrap bootstrap-rel
  544  ls
  546  make run
  547  make new t=cowboy.http n=hello_handler
  548  make run
  549  make new t=cowboy.loop n=long_handler
  550  make run

