.bytecode 50.0
.class final synchronized cn/passguard/o
.super java/lang/Object
.implements android/view/View$OnClickListener

.field private synthetic 'a' Lcn/passguard/k;

.method <init>(Lcn/passguard/k;)V
aload 0
aload 1
putfield cn/passguard/o/a Lcn/passguard/k;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcn/passguard/o;)Lcn/passguard/k;
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final onClick(Landroid/view/View;)V
iconst_0
istore 3
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/String
astore 1
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
L1:
return
L0:
aload 1
ldc "done"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokevirtual cn/passguard/k/j()V
return
L2:
aload 1
ldc "backspace"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
getstatic cn/passguard/y/b Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L4
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/a(Lcn/passguard/k;)V
L4:
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/b(Lcn/passguard/k;)Lcn/passguard/f;
invokeinterface cn/passguard/f/b()V 0
return
L3:
aload 1
ldc "shift"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/c(Lcn/passguard/k;)Z
ifne L6
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/d(Lcn/passguard/k;)V
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
astore 1
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/e(Lcn/passguard/k;)Z
ifeq L7
iconst_0
istore 2
L8:
aload 1
iload 2
invokestatic cn/passguard/k/a(Lcn/passguard/k;Z)V
return
L7:
iconst_1
istore 2
goto L8
L6:
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
astore 1
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/e(Lcn/passguard/k;)Z
ifeq L9
iconst_0
istore 2
L10:
aload 1
iload 2
invokestatic cn/passguard/k/a(Lcn/passguard/k;Z)V
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/f(Lcn/passguard/k;)V
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/g(Lcn/passguard/k;)Z
ifeq L11
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/d(Lcn/passguard/k;)V
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
astore 1
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/e(Lcn/passguard/k;)Z
ifeq L12
iconst_0
istore 2
L13:
aload 1
iload 2
invokestatic cn/passguard/k/a(Lcn/passguard/k;Z)V
L11:
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
astore 1
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/g(Lcn/passguard/k;)Z
ifeq L14
iload 3
istore 2
L15:
aload 1
iload 2
invokestatic cn/passguard/k/b(Lcn/passguard/k;Z)V
return
L9:
iconst_1
istore 2
goto L10
L12:
iconst_1
istore 2
goto L13
L14:
iconst_1
istore 2
goto L15
L5:
aload 1
ldc "changeletter"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L16
aload 1
ldc "changenumber"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L16
aload 1
ldc "changespecial"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L17
L16:
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
aload 1
invokestatic cn/passguard/k/a(Lcn/passguard/k;Ljava/lang/String;)V
return
L17:
aload 1
ldc "left"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L18
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/b(Lcn/passguard/k;)Lcn/passguard/f;
invokeinterface cn/passguard/f/c()V 0
return
L18:
aload 1
ldc "right"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L19
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/b(Lcn/passguard/k;)Lcn/passguard/f;
invokeinterface cn/passguard/f/d()V 0
return
L19:
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/b(Lcn/passguard/k;)Lcn/passguard/f;
invokeinterface cn/passguard/f/a()Ljava/lang/String; 0
invokevirtual java/lang/String/length()I
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
getstatic cn/passguard/y/i Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
if_icmpge L1
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
aload 1
invokestatic cn/passguard/k/b(Lcn/passguard/k;Ljava/lang/String;)Z
ifeq L1
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
getstatic cn/passguard/y/b Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L20
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
aload 1
invokestatic cn/passguard/k/c(Lcn/passguard/k;Ljava/lang/String;)V
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
getstatic cn/passguard/y/a Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L21
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokevirtual cn/passguard/k/b()V
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/b(Lcn/passguard/k;)Lcn/passguard/f;
aload 1
invokeinterface cn/passguard/f/a(Ljava/lang/String;)V 1
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
new cn/passguard/p
dup
aload 0
invokespecial cn/passguard/p/<init>(Lcn/passguard/o;)V
invokestatic cn/passguard/k/a(Lcn/passguard/k;Ljava/lang/Thread;)V
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/i(Lcn/passguard/k;)Ljava/lang/Thread;
invokevirtual java/lang/Thread/start()V
L22:
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
getstatic cn/passguard/y/h Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
getstatic cn/passguard/k/a I
iand
ifeq L23
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/j(Lcn/passguard/k;)V
L23:
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/e(Lcn/passguard/k;)Z
ifeq L1
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
iconst_0
invokestatic cn/passguard/k/a(Lcn/passguard/k;Z)V
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/d(Lcn/passguard/k;)V
return
L21:
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/b(Lcn/passguard/k;)Lcn/passguard/f;
ldc "*"
invokeinterface cn/passguard/f/a(Ljava/lang/String;)V 1
goto L22
L20:
aload 0
getfield cn/passguard/o/a Lcn/passguard/k;
invokestatic cn/passguard/k/b(Lcn/passguard/k;)Lcn/passguard/f;
aload 1
invokeinterface cn/passguard/f/a(Ljava/lang/String;)V 1
goto L22
.limit locals 4
.limit stack 4
.end method
