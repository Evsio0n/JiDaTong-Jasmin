.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/business/OapComFactory
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/cloud/business/OapComFactory;

.method static <clinit>()V
new com/nd/android/u/cloud/business/OapComFactory
dup
invokespecial com/nd/android/u/cloud/business/OapComFactory/<init>()V
putstatic com/nd/android/u/cloud/business/OapComFactory/instance Lcom/nd/android/u/cloud/business/OapComFactory;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
getstatic com/nd/android/u/cloud/business/OapComFactory/instance Lcom/nd/android/u/cloud/business/OapComFactory;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
new com/nd/android/u/contact/com/OapFriendGroupCom
dup
invokespecial com/nd/android/u/contact/com/OapFriendGroupCom/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method

.method public getOapOrganizationCom()Lcom/nd/android/u/cloud/com/OapOrganizationCom;
new com/nd/android/u/cloud/com/OapOrganizationCom
dup
invokespecial com/nd/android/u/cloud/com/OapOrganizationCom/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method

.method public getOapPassportCom()Lcom/nd/android/u/cloud/com/OapPassportCom;
new com/nd/android/u/cloud/com/OapPassportCom
dup
invokespecial com/nd/android/u/cloud/com/OapPassportCom/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method

.method public getOapSendCom()Lcom/nd/android/u/cloud/com/base/OapSendSupportCom;
new com/nd/android/u/cloud/com/base/OapSendSupportCom
dup
invokespecial com/nd/android/u/cloud/com/base/OapSendSupportCom/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method

.method public getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
new com/nd/android/u/contact/com/OapUserCom
dup
invokespecial com/nd/android/u/contact/com/OapUserCom/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method
