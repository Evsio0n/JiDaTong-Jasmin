.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/dataStructure/SelectedMemberQueue
.super java/lang/Object

.field public static final 'DEFAULT_DISCUSSION_MAX' I = 20


.field public static final 'DEFAULT_GROUP_MAX' I = 50


.field private static 'instance' Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;

.field private 'groupType' I

.field private 'list' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.field private 'max_num' I

.field private 'users' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
bipush 19
putfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/max_num I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/list Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/users Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
getstatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/instance Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
ifnonnull L0
new com/nd/android/u/contact/dataStructure/SelectedMemberQueue
dup
invokespecial com/nd/android/u/contact/dataStructure/SelectedMemberQueue/<init>()V
putstatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/instance Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
L0:
getstatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/instance Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
areturn
.limit locals 0
.limit stack 2
.end method

.method public addUid(J)Z
aload 0
lload 1
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/hasMember(J)Z
ifeq L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/member_exit_already I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/list Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L1
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/list Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
iconst_1
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Ljava/lang/Long;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/list Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMax_num()I
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/max_num I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUsers()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/users Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hasMember(J)Z
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/users Ljava/util/List;
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/users Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lload 1
lcmp
ifne L2
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public init()V
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/list Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/list Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/users Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/users Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public isContians(J)Z
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/list Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public removeUid(J)V
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/list Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/list Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public setMax_num(II)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/max_num I
aload 0
iload 2
putfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/groupType I
return
.limit locals 3
.limit stack 2
.end method

.method public setUsers(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/users Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public toggle(JLandroid/os/Handler;)Z
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/list Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/list Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 3
ifnull L1
aload 3
bipush 51
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 4
aload 4
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield android/os/Message/obj Ljava/lang/Object;
aload 3
aload 4
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L1:
iconst_0
ireturn
L0:
aload 0
lload 1
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/hasMember(J)Z
ifeq L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/member_exit_already I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
iconst_1
ireturn
L2:
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/max_num I
if_icmplt L3
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/groupType I
iconst_3
if_icmpne L4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/discussion_member_limit I
iconst_1
anewarray java/lang/Object
dup
iconst_0
bipush 19
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
L5:
iconst_1
ireturn
L4:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/group_member_limit I
iconst_1
anewarray java/lang/Object
dup
iconst_0
bipush 49
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
goto L5
L3:
aload 0
getfield com/nd/android/u/contact/dataStructure/SelectedMemberQueue/list Ljava/util/ArrayList;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 3
ifnull L1
aload 3
bipush 50
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 4
aload 4
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield android/os/Message/obj Ljava/lang/Object;
aload 3
aload 4
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
iconst_0
ireturn
.limit locals 5
.limit stack 7
.end method
