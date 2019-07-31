.bytecode 50.0
.class public synchronized com/product/android/business/bean/UserInfo
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 6504627686859795470L


.field public 'dataline' J

.field public 'flower' I

.field public 'grade' I

.field private 'mBlowfish' Ljava/lang/String;

.field private 'mIdentity' I

.field private 'mIsOrgAdmin' I

.field private 'mIs_auto_login' Z

.field private 'mIs_phone' I

.field private 'mIs_save_account' Z

.field private 'mLast_login_dt' Ljava/lang/String;

.field private 'mOap_uid' J

.field private 'mOap_unit_id' I

.field private 'mSid' Ljava/lang/String;

.field private 'mTicket' Ljava/lang/String;

.field private 'mUap_uid' J

.field private 'mUser_name' Ljava/lang/String;

.field private 'mUser_nick_name' Ljava/lang/String;

.field private 'mUser_pass' Ljava/lang/String;

.field private 'mUser_pass_md5' Ljava/lang/String;

.field private 'mUser_pass_mixed_md5' Ljava/lang/String;

.field private 'mVar_ext' Ljava/lang/String;

.field public 'prestige' I

.field public 'realname' Ljava/lang/String;

.field public 'sex' I

.field public 'uniquename' Ljava/lang/String;

.field public 'wealth' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/product/android/business/bean/UserInfo/mIsOrgAdmin I
aload 0
invokevirtual com/product/android/business/bean/UserInfo/init()V
return
.limit locals 1
.limit stack 2
.end method

.method private getStarAppData(Landroid/database/Cursor;)V
aload 1
ldc "sex"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 2
iload 2
ifge L0
return
L0:
aload 0
aload 1
iload 2
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/business/bean/UserInfo/sex I
aload 0
aload 1
aload 1
ldc "prestige"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/business/bean/UserInfo/prestige I
aload 0
aload 1
aload 1
ldc "wealth"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/business/bean/UserInfo/wealth I
aload 0
aload 1
aload 1
ldc "grade"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/business/bean/UserInfo/grade I
aload 0
aload 1
aload 1
ldc "flower"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/business/bean/UserInfo/flower I
aload 0
aload 1
aload 1
ldc "realname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/business/bean/UserInfo/realname Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "uniquename"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/business/bean/UserInfo/uniquename Ljava/lang/String;
return
.limit locals 3
.limit stack 4
.end method

.method public LoadFormCursor(Landroid/database/Cursor;)Z
aload 0
aload 1
aload 1
ldc "UAP_UID"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/product/android/business/bean/UserInfo/mUap_uid J
aload 0
aload 1
aload 1
ldc "USER_NAME"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/business/bean/UserInfo/mUser_name Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "USER_NICK_NAME"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/business/bean/UserInfo/mUser_nick_name Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "USER_PASS"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/business/bean/UserInfo/mUser_pass Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "USER_PASS_MD5"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/business/bean/UserInfo/mUser_pass_md5 Ljava/lang/String;
aload 1
ldc "USER_PASS_MIXED_MD5"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 2
iload 2
iconst_m1
if_icmpeq L0
aload 0
aload 1
iload 2
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/business/bean/UserInfo/mUser_pass_mixed_md5 Ljava/lang/String;
L0:
aload 1
ldc "BLOWFISH"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 2
iload 2
iconst_m1
if_icmpeq L1
aload 0
aload 1
iload 2
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/business/bean/UserInfo/mBlowfish Ljava/lang/String;
L1:
aload 1
ldc "TICKET"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 2
iload 2
iconst_m1
if_icmpeq L2
aload 0
aload 1
iload 2
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/business/bean/UserInfo/mTicket Ljava/lang/String;
L2:
aload 0
ldc "true"
aload 1
aload 1
ldc "ISSAVEACCOUNT"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
putfield com/product/android/business/bean/UserInfo/mIs_save_account Z
aload 0
ldc "true"
aload 1
aload 1
ldc "ISAUTOLOGIN"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
putfield com/product/android/business/bean/UserInfo/mIs_auto_login Z
aload 0
aload 1
aload 1
ldc "LAST_LOGIN_DT"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/business/bean/UserInfo/mLast_login_dt Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "OAP_UNIT_ID"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/business/bean/UserInfo/mOap_unit_id I
aload 0
aload 1
aload 1
ldc "OAP_UID"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/product/android/business/bean/UserInfo/mOap_uid J
aload 0
aload 1
aload 1
ldc "VAR_EXT"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/product/android/business/bean/UserInfo/mVar_ext Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "ISPHONE"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/business/bean/UserInfo/mIs_phone I
aload 1
ldc "ISADMIN"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 2
iload 2
iconst_m1
if_icmpeq L3
aload 0
aload 1
iload 2
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/business/bean/UserInfo/mIsOrgAdmin I
L3:
aload 1
ldc "IDENTITY"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 2
iload 2
iconst_m1
if_icmpeq L4
aload 0
aload 1
iload 2
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/business/bean/UserInfo/mIdentity I
L4:
aload 0
aload 1
invokespecial com/product/android/business/bean/UserInfo/getStarAppData(Landroid/database/Cursor;)V
iconst_0
ireturn
.limit locals 3
.limit stack 5
.end method

.method public getBlowfish()Ljava/lang/String;
aload 0
getfield com/product/android/business/bean/UserInfo/mBlowfish Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIdentity()I
aload 0
getfield com/product/android/business/bean/UserInfo/mIdentity I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsAdmin()I
aload 0
getfield com/product/android/business/bean/UserInfo/mIsOrgAdmin I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsAutoLogin()Z
aload 0
getfield com/product/android/business/bean/UserInfo/mIs_auto_login Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsSaveAccount()Z
aload 0
getfield com/product/android/business/bean/UserInfo/mIs_save_account Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIs_phone()I
aload 0
getfield com/product/android/business/bean/UserInfo/mIs_phone I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLastLoginDt()Ljava/lang/String;
aload 0
getfield com/product/android/business/bean/UserInfo/mLast_login_dt Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOapUid()J
aload 0
getfield com/product/android/business/bean/UserInfo/mOap_uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getOapUnitId()I
aload 0
getfield com/product/android/business/bean/UserInfo/mOap_unit_id I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSessionId()Ljava/lang/String;
aload 0
getfield com/product/android/business/bean/UserInfo/mSid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTicket()Ljava/lang/String;
aload 0
getfield com/product/android/business/bean/UserInfo/mTicket Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUapUid()J
aload 0
getfield com/product/android/business/bean/UserInfo/mUap_uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUserName()Ljava/lang/String;
aload 0
getfield com/product/android/business/bean/UserInfo/mUser_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserNickName()Ljava/lang/String;
aload 0
getfield com/product/android/business/bean/UserInfo/mUser_nick_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserPass()Ljava/lang/String;
aload 0
getfield com/product/android/business/bean/UserInfo/mUser_pass Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserPassMd5()Ljava/lang/String;
aload 0
getfield com/product/android/business/bean/UserInfo/mUser_pass_md5 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserPassMixedMd5()Ljava/lang/String;
aload 0
getfield com/product/android/business/bean/UserInfo/mUser_pass_mixed_md5 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getmVar_ext()Ljava/lang/String;
aload 0
getfield com/product/android/business/bean/UserInfo/mVar_ext Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public init()V
aload 0
ldc ""
putfield com/product/android/business/bean/UserInfo/mUser_name Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/bean/UserInfo/mUser_pass Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/bean/UserInfo/mUser_pass_md5 Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/bean/UserInfo/mUser_pass_mixed_md5 Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/bean/UserInfo/mTicket Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/bean/UserInfo/mBlowfish Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/bean/UserInfo/mSid Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/bean/UserInfo/mUser_nick_name Ljava/lang/String;
aload 0
iconst_1
putfield com/product/android/business/bean/UserInfo/mIs_save_account Z
aload 0
iconst_0
putfield com/product/android/business/bean/UserInfo/mIs_phone I
return
.limit locals 1
.limit stack 2
.end method

.method public setBlowfish(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/bean/UserInfo/mBlowfish Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setIdentity(I)V
aload 0
iload 1
putfield com/product/android/business/bean/UserInfo/mIdentity I
return
.limit locals 2
.limit stack 2
.end method

.method public setIsAutoLogin(Z)V
aload 0
iload 1
putfield com/product/android/business/bean/UserInfo/mIs_auto_login Z
return
.limit locals 2
.limit stack 2
.end method

.method public setIsOrgAdmin(I)V
aload 0
iload 1
putfield com/product/android/business/bean/UserInfo/mIsOrgAdmin I
return
.limit locals 2
.limit stack 2
.end method

.method public setIsSaveAccount(Z)V
aload 0
iload 1
putfield com/product/android/business/bean/UserInfo/mIs_save_account Z
return
.limit locals 2
.limit stack 2
.end method

.method public setIs_phone(I)V
aload 0
iload 1
putfield com/product/android/business/bean/UserInfo/mIs_phone I
return
.limit locals 2
.limit stack 2
.end method

.method public setLastLoginDt(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/bean/UserInfo/mLast_login_dt Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setOapUid(J)V
aload 0
lload 1
putfield com/product/android/business/bean/UserInfo/mOap_uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setOapUnitId(I)V
aload 0
iload 1
putfield com/product/android/business/bean/UserInfo/mOap_unit_id I
return
.limit locals 2
.limit stack 2
.end method

.method public setSessionId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/bean/UserInfo/mSid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTicket(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/bean/UserInfo/mTicket Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUapUid(J)V
aload 0
lload 1
putfield com/product/android/business/bean/UserInfo/mUap_uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUserName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/bean/UserInfo/mUser_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserNickName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/bean/UserInfo/mUser_nick_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserPass(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/bean/UserInfo/mUser_pass Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserPassMd5(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/bean/UserInfo/mUser_pass_md5 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserPassMixedMd5(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/bean/UserInfo/mUser_pass_mixed_md5 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setmVar_ext(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/bean/UserInfo/mVar_ext Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
