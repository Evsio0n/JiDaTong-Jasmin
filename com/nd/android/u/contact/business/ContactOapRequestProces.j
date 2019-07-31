.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/ContactOapRequestProces
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/contact/business/ContactOapRequestProces;

.method static <clinit>()V
new com/nd/android/u/contact/business/ContactOapRequestProces
dup
invokespecial com/nd/android/u/contact/business/ContactOapRequestProces/<init>()V
putstatic com/nd/android/u/contact/business/ContactOapRequestProces/instance Lcom/nd/android/u/contact/business/ContactOapRequestProces;
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

.method public static getInstance()Lcom/nd/android/u/contact/business/ContactOapRequestProces;
getstatic com/nd/android/u/contact/business/ContactOapRequestProces/instance Lcom/nd/android/u/contact/business/ContactOapRequestProces;
areturn
.limit locals 0
.limit stack 1
.end method

.method public addFriendGroup(Ljava/lang/String;)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
aload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/addFriendGroup(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public addFriendGroupreturncode(Ljava/lang/String;)I
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
aload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/addFriendGroupreturncode(Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public delFriendGroup(I)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
iload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/delFriendGroup(I)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getBindUserInfo(J)Lcom/product/android/business/login/BindUser;
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
lload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getBindUserInfo(J)Lcom/product/android/business/login/BindUser;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getBindUserList(I)Ljava/util/ArrayList;
.signature "(I)Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
iload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getBindUserList(I)Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getClassGrades(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGrade;>;"
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
iload 1
invokevirtual com/nd/android/u/contact/com/OapClassCom/getClassGrades(I)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getOapClasses(III)Ljava/util/List;
.signature "(III)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;"
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
iload 1
iload 2
iload 3
i2l
invokevirtual com/nd/android/u/contact/com/OapClassCom/getOapClasses(IIJ)Ljava/util/List;
areturn
.limit locals 4
.limit stack 5
.end method

.method public getUnitInfos(Ljava/lang/String;)Lcom/nd/android/u/contact/dataStructure/OapUnit;
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getUnitInfos(Ljava/lang/String;)Ljava/util/List;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifle L0
aload 1
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapUnit
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getUnitNameByBindUserList(I)Ljava/lang/String;
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
iload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getUnitNameByBindUserList(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getUserInfoExt(JLcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
lload 1
aload 3
invokevirtual com/nd/android/u/contact/com/OapUserCom/getUserInfoExt(JLcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getUserInfoupdate(Lcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
aload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getUserInfoupdate(Lcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
areturn
.limit locals 2
.limit stack 2
.end method

.method public memberAddGroup(Ljava/lang/String;[J)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
aload 1
aload 2
invokevirtual com/nd/android/u/contact/com/OapGroupCom/memberAddGroup(Ljava/lang/String;[J)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public memberremove(JJ)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
lload 1
lload 3
invokevirtual com/nd/android/u/contact/com/OapGroupCom/memberremove(JJ)Z
ireturn
.limit locals 5
.limit stack 5
.end method

.method public modifyFriendGroup(ILjava/lang/String;)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
iload 1
aload 2
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/modifyFriendGroup(ILjava/lang/String;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public modifyUser(Lorg/json/JSONObject;)Z
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
aload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/modifyUser(Lorg/json/JSONObject;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public search(Ljava/lang/String;III)Ljava/util/HashMap;
.signature "(Ljava/lang/String;III)Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
aload 1
iload 2
iload 3
iload 4
invokevirtual com/nd/android/u/contact/com/OapUnitCom/search(Ljava/lang/String;III)Ljava/util/HashMap;
areturn
.limit locals 5
.limit stack 5
.end method

.method public searchDetail(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
iload 1
invokevirtual com/nd/android/u/contact/com/OapUnitCom/searchDetail(I)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method
