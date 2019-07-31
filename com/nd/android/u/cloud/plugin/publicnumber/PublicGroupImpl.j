.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/plugin/publicnumber/PublicGroupImpl
.super java/lang/Object
.implements com/nd/android/u/publicNumber/controller/outInterface/IPublicGroup

.field private static final 'CLUB' I = 1


.field private static final 'LIFE' I = 2


.field private static final 'SCHOOL' I = 0


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getGroupName(I)Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/cloud/plugin/publicnumber/PublicGroupImpl/getGroupNames()[Ljava/lang/String;
astore 2
iload 1
tableswitch 6
L0
L1
default : L2
L2:
aload 2
iconst_2
aaload
areturn
L0:
aload 2
iconst_0
aaload
areturn
L1:
aload 2
iconst_1
aaload
areturn
.limit locals 3
.limit stack 2
.end method

.method public getGroupNames()[Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131558446
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
