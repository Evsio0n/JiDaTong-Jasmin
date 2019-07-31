.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/util/GroupPermissionManager
.super java/lang/Object

.field public static final 'COMMONGROUPPERMISSION' Ljava/lang/String; = "commongrouppermission"

.field public static final 'INITGROUPPERMISSIONSETTYPE' I = -1


.field public static 'mCommGroupPermission' I

.method static <clinit>()V
iconst_m1
putstatic com/nd/android/u/contact/util/GroupPermissionManager/mCommGroupPermission I
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getCommonGroupSetType()I
getstatic com/nd/android/u/contact/util/GroupPermissionManager/mCommGroupPermission I
iconst_m1
if_icmpeq L0
getstatic com/nd/android/u/contact/util/GroupPermissionManager/mCommGroupPermission I
ireturn
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "commongrouppermission"
iconst_2
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadIntKey(Ljava/lang/String;I)I
istore 0
iload 0
putstatic com/nd/android/u/contact/util/GroupPermissionManager/mCommGroupPermission I
iload 0
ireturn
.limit locals 1
.limit stack 3
.end method

.method public static getFixGroupSetType(J)I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getFixGroupSetType(Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static getFixGroupSetType(Ljava/lang/String;)I
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
aload 0
invokestatic com/common/android/utils/FormatUtils/parseLong(Ljava/lang/String;)J
invokevirtual com/nd/android/u/contact/business/GroupVariable/findAllGroupByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
astore 3
aload 3
ifnull L0
aload 3
getfield com/product/android/commonInterface/contact/OapGroup/mgroupSetType I
iconst_m1
if_icmpeq L0
aload 3
getfield com/product/android/commonInterface/contact/OapGroup/mgroupSetType I
istore 1
L1:
iload 1
ireturn
L0:
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getCommonGroupSetType()I
istore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 1
invokestatic com/common/android/utils/ConfigHelper/getGroupSetType(Ljava/lang/String;I)I
istore 2
iload 2
istore 1
aload 3
ifnull L1
aload 3
iload 2
putfield com/product/android/commonInterface/contact/OapGroup/mgroupSetType I
iload 2
ireturn
.limit locals 4
.limit stack 3
.end method

.method public static getFixPspGroupSetType(Ljava/lang/String;)I
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getCommonGroupSetType()I
istore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 1
invokestatic com/common/android/utils/ConfigHelper/getGroupSetType(Ljava/lang/String;I)I
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static getGroupSetFormType(I)Ljava/lang/String;
iload 0
tableswitch 0
L0
L1
L2
default : L3
L3:
ldc ""
areturn
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/group_notify_mask I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L1:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/group_notify_receive_and_notify I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L2:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/group_notify_receive_and_shownum I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static removeFixGroupSetType(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ConfigHelper/removeGroupSetKey(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public static saveCommonGroupSetType(I)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "commongrouppermission"
iload 0
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveIntKey(Ljava/lang/String;I)V
iload 0
putstatic com/nd/android/u/contact/util/GroupPermissionManager/mCommGroupPermission I
return
.limit locals 1
.limit stack 3
.end method

.method public static saveFixGroupDefaultSetType(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
invokestatic com/common/android/utils/ConfigHelper/saveGroupSetType(Ljava/lang/String;I)V
return
.limit locals 1
.limit stack 3
.end method

.method public static saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 0
iconst_1
putfield com/product/android/commonInterface/contact/OapGroup/mgroupSetType I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
invokestatic com/common/android/utils/ConfigHelper/saveGroupSetType(Ljava/lang/String;I)V
return
.limit locals 1
.limit stack 3
.end method

.method public static saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapGroup/mgroupSetType I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 1
invokestatic com/common/android/utils/ConfigHelper/saveGroupSetType(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public static saveFixGroupSetType(Ljava/lang/String;I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 1
invokestatic com/common/android/utils/ConfigHelper/saveGroupSetType(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public static switchReceiveFixGroupMsg(ILjava/lang/String;I)V
iload 0
ifeq L0
aload 1
iload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerMASK2ReceiveLogRecGroup(Ljava/lang/String;I)V
L0:
return
.limit locals 3
.limit stack 2
.end method
