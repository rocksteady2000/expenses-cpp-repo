 # build an executable from expenses.cpp
 MAINPROG= expenses
 CC = gcc
 CFLAGS = -Wall -std=c++2a 
 LDFLAGS = -lstdc++
 OBJ_FILE = build/expenses.o
 SRC_FILE = src/expenses.cpp

all: ${OBJ_FILE}
	${CC}  ${LDFLAGS} $< -o ${MAINPROG}

${OBJ_FILE}: ${SRC_FILE}
	${CC} ${CFLAGS} -c  -o $@ $^

#takes command line parameter for filename
run:
	./${MAINPROG} ${filename}

 clean: 
	${RM} ${OBJ_FILE} ${MAINPROG}
