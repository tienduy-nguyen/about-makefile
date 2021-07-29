# Symbols
## Các ký hiệu makefile $ @ và $ <có nghĩa là gì?
```makefile
CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=main.cpp hello.cpp factorial.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=hello

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
$(CC) $(CFLAGS) $< -o $@
```

Chính xác thì `$@` và `$<` làm gì?

- Response

`$@` là tên của tệp được tạo và `$<` 
điều kiện tiên quyết đầu tiên (thường là tệp nguồn). 
Bạn có thể tìm thấy danh sách tất cả các biến đặc biệt này 
trong Hướng dẫn tạo GN .

Ví dụ, hãy xem xét khai báo sau:

all: `library.cpp main.cpp`
Trong trường hợp này:

- `$@` ước tính thành all
- `$<` ước tính thành library.cpp
- `$^` ước tính thành library.cpp main.cpp