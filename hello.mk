

#================================================================
#	 Copyright (C) 2019 All rights reserved.
#	 
#	 文件名称：hello.mk
#	 创 建 者：shizhai(ysprogram@163.com)
#	 创建日期：2019年03月27日
#	 描    述：
#
#================================================================

cc = gcc
prom = hello
obj = main.o

$(prom): $(obj)
	$(cc) -o $(prom) $(obj)

%.o: %.c $(deps)
	$(cc) -c $< -o $@

clean:
	rm -rf $(obj) $(prom)
