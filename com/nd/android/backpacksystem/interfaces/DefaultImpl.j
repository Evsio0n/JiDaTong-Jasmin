.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/interfaces/DefaultImpl
.super java/lang/Object
.implements com/nd/android/backpacksystem/interfaces/InterfaceForDifference

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCoinAndScore(Landroid/content/Context;)Lcom/nd/android/backpacksystem/data/ErpGrowUpInfo;
aload 1
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/getErpGroupUpInfo(Landroid/content/Context;)Lcom/nd/android/backpacksystem/data/ErpGrowUpInfo;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getCoinIcon()I
getstatic com/nd/android/backpacksystem/R$drawable/icon_bottom_nd_coin I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDepartmentList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/getDepartmentUserSimpleList()Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSelectPersonForSendTabTitle()I
getstatic com/nd/android/backpacksystem/R$array/select_gift_person I
ireturn
.limit locals 1
.limit stack 1
.end method
