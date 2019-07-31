.bytecode 50.0
.class public synchronized cmb/pb/cmbsafe/b
.super java/lang/Object

.field public static 'a' Ljava/lang/Boolean;

.field private static 'b' Ljava/util/HashMap;

.field private static 'c' Ljava/util/HashMap;

.field private static 'd' Ljava/util/HashMap;

.field private static 'e' Ljava/lang/String;

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic cmb/pb/cmbsafe/b/b Ljava/util/HashMap;
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic cmb/pb/cmbsafe/b/c Ljava/util/HashMap;
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic cmb/pb/cmbsafe/b/d Ljava/util/HashMap;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
putstatic cmb/pb/cmbsafe/b/a Ljava/lang/Boolean;
return
.limit locals 0
.limit stack 2
.end method

.method public static a()Lcmb/pb/ui/cmbwidget/CmbEditText;
getstatic cmb/pb/cmbsafe/b/b Ljava/util/HashMap;
lconst_1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cmb/pb/ui/cmbwidget/CmbEditText
areturn
.limit locals 0
.limit stack 3
.end method

.method public static a(Landroid/app/Application;Lcmb/pb/ui/cmbwidget/CmbEditText;)V
getstatic cmb/pb/cmbsafe/b/b Ljava/util/HashMap;
invokevirtual java/util/HashMap/clear()V
getstatic cmb/pb/cmbsafe/b/b Ljava/util/HashMap;
lconst_1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 1
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 3
.end method

.method public static a(Lcmb/pb/util/CMBKeyboardFunc;)V
getstatic cmb/pb/cmbsafe/b/d Ljava/util/HashMap;
invokevirtual java/util/HashMap/clear()V
getstatic cmb/pb/cmbsafe/b/d Ljava/util/HashMap;
lconst_1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 0
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 1
.limit stack 3
.end method

.method public static a(Ljava/lang/String;)V
aload 0
putstatic cmb/pb/cmbsafe/b/e Ljava/lang/String;
return
.limit locals 1
.limit stack 1
.end method

.method public static b()Ljava/lang/String;
getstatic cmb/pb/cmbsafe/b/e Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static c()Lcmb/pb/util/CMBKeyboardFunc;
getstatic cmb/pb/cmbsafe/b/d Ljava/util/HashMap;
lconst_1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast cmb/pb/util/CMBKeyboardFunc
areturn
.limit locals 0
.limit stack 3
.end method
