.bytecode 50.0
.class final synchronized synthetic com/alipay/sdk/authjs/b
.super java/lang/Object

.field static final synthetic 'a' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
invokestatic com/alipay/sdk/authjs/a$a/values()[Lcom/alipay/sdk/authjs/a$a;
arraylength
newarray int
putstatic com/alipay/sdk/authjs/b/a [I
L0:
getstatic com/alipay/sdk/authjs/b/a [I
getstatic com/alipay/sdk/authjs/a$a/b Lcom/alipay/sdk/authjs/a$a;
invokevirtual com/alipay/sdk/authjs/a$a/ordinal()I
iconst_1
iastore
L1:
getstatic com/alipay/sdk/authjs/b/a [I
getstatic com/alipay/sdk/authjs/a$a/c Lcom/alipay/sdk/authjs/a$a;
invokevirtual com/alipay/sdk/authjs/a$a/ordinal()I
iconst_2
iastore
L3:
getstatic com/alipay/sdk/authjs/b/a [I
getstatic com/alipay/sdk/authjs/a$a/d Lcom/alipay/sdk/authjs/a$a;
invokevirtual com/alipay/sdk/authjs/a$a/ordinal()I
iconst_3
iastore
L5:
return
L6:
astore 0
return
L4:
astore 0
goto L3
L2:
astore 0
goto L1
.limit locals 1
.limit stack 3
.end method
