.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton
.super java/lang/Object

.field public static final 'EVENTTYPE' Ljava/lang/String; = "click"

.field public static final 'VIEWTYPE' Ljava/lang/String; = "view"

.field public 'key' Ljava/lang/String;

.field public 'name' Ljava/lang/String;

.field public 'subButtons' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;>;"

.field public 'type' Ljava/lang/String;

.field public 'url' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/type Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/name Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/key Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/url Ljava/lang/String;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/subButtons Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 3
.end method

.method public hasSubButton()Z
aload 0
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton/subButtons Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method
