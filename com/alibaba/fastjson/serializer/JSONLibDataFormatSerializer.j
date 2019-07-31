.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/JSONLibDataFormatSerializer
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/ObjectSerializer

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.throws java/io/IOException
aload 2
ifnonnull L0
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 2
checkcast java/util/Date
astore 2
new com/alibaba/fastjson/JSONObject
dup
invokespecial com/alibaba/fastjson/JSONObject/<init>()V
astore 3
aload 3
ldc "date"
aload 2
invokevirtual java/util/Date/getDate()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 3
ldc "day"
aload 2
invokevirtual java/util/Date/getDay()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 3
ldc "hours"
aload 2
invokevirtual java/util/Date/getHours()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 3
ldc "minutes"
aload 2
invokevirtual java/util/Date/getMinutes()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 3
ldc "month"
aload 2
invokevirtual java/util/Date/getMonth()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 3
ldc "seconds"
aload 2
invokevirtual java/util/Date/getSeconds()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 3
ldc "time"
aload 2
invokevirtual java/util/Date/getTime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 3
ldc "timezoneOffset"
aload 2
invokevirtual java/util/Date/getTimezoneOffset()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 3
ldc "year"
aload 2
invokevirtual java/util/Date/getYear()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual com/alibaba/fastjson/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
aload 3
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
return
.limit locals 5
.limit stack 4
.end method
