.bytecode 50.0
.class public synchronized com/product/android/business/login/JobNumberUserInfo
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = -1285827226634284833L


.field private 'mBindUapAccount' Ljava/lang/String;

.field private 'mBlowfish' Ljava/lang/String;

.field private 'mIdentity' I

.field private 'mIs_auto_login' Z

.field private 'mIs_phone' I

.field private 'mIs_save_account' Z

.field private 'mLast_login_dt' Ljava/lang/String;

.field private 'mOap_uid' J

.field private 'mPwdtime' Ljava/lang/String;

.field private 'mSid' Ljava/lang/String;

.field private 'mTicket' Ljava/lang/String;

.field private 'mUap_uid' J

.field private 'mUnit_id' I

.field private 'mUnitcode' Ljava/lang/String;

.field private 'mUser_name' Ljava/lang/String;

.field private 'mUser_nick_name' Ljava/lang/String;

.field private 'mUser_pass' Ljava/lang/String;

.field private 'mUser_pass_md5' Ljava/lang/String;

.field private 'mUser_pass_mixed_md5' Ljava/lang/String;

.field private 'mVar_ext' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/init()V
return
.limit locals 1
.limit stack 1
.end method

.method public clearPwdAndTicket()V
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mUser_pass Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mUser_pass_md5 Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mUser_pass_mixed_md5 Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mTicket Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public converToUserInfo()Lcom/product/android/business/bean/UserInfo;
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 1
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mBlowfish Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setBlowfish(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mIs_phone I
invokevirtual com/product/android/business/bean/UserInfo/setIs_phone(I)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mIs_auto_login Z
invokevirtual com/product/android/business/bean/UserInfo/setIsAutoLogin(Z)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mIs_save_account Z
invokevirtual com/product/android/business/bean/UserInfo/setIsSaveAccount(Z)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mLast_login_dt Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setLastLoginDt(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mVar_ext Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setmVar_ext(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mOap_uid J
invokevirtual com/product/android/business/bean/UserInfo/setOapUid(J)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUap_uid J
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUnit_id I
invokevirtual com/product/android/business/bean/UserInfo/setOapUnitId(I)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mSid Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mTicket Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setTicket(Ljava/lang/String;)V
aload 1
lconst_0
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUser_name Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUser_nick_name Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserNickName(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUser_pass Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPass(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUser_pass_md5 Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPassMd5(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUser_pass_mixed_md5 Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPassMixedMd5(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mIdentity I
invokevirtual com/product/android/business/bean/UserInfo/setIdentity(I)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public converToWorkerUserInfo(Lcom/product/android/business/bean/UserInfo;)V
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getBlowfish()Ljava/lang/String;
putfield com/product/android/business/login/JobNumberUserInfo/mBlowfish Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getIs_phone()I
putfield com/product/android/business/login/JobNumberUserInfo/mIs_phone I
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getIsAutoLogin()Z
putfield com/product/android/business/login/JobNumberUserInfo/mIs_auto_login Z
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getIsSaveAccount()Z
putfield com/product/android/business/login/JobNumberUserInfo/mIs_save_account Z
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getLastLoginDt()Ljava/lang/String;
putfield com/product/android/business/login/JobNumberUserInfo/mLast_login_dt Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getmVar_ext()Ljava/lang/String;
putfield com/product/android/business/login/JobNumberUserInfo/mVar_ext Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
putfield com/product/android/business/login/JobNumberUserInfo/mOap_uid J
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
putfield com/product/android/business/login/JobNumberUserInfo/mUnit_id I
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
putfield com/product/android/business/login/JobNumberUserInfo/mSid Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getTicket()Ljava/lang/String;
putfield com/product/android/business/login/JobNumberUserInfo/mTicket Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
putfield com/product/android/business/login/JobNumberUserInfo/mUser_name Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserNickName()Ljava/lang/String;
putfield com/product/android/business/login/JobNumberUserInfo/mUser_nick_name Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserPass()Ljava/lang/String;
putfield com/product/android/business/login/JobNumberUserInfo/mUser_pass Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserPassMd5()Ljava/lang/String;
putfield com/product/android/business/login/JobNumberUserInfo/mUser_pass_md5 Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserPassMixedMd5()Ljava/lang/String;
putfield com/product/android/business/login/JobNumberUserInfo/mUser_pass_mixed_md5 Ljava/lang/String;
aload 0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
putfield com/product/android/business/login/JobNumberUserInfo/mIdentity I
return
.limit locals 2
.limit stack 3
.end method

.method public getBindUapAccount()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mBindUapAccount Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBlowfish()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mBlowfish Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIdentity()I
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mIdentity I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIs_phone()I
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mIs_phone I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLast_login_dt()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mLast_login_dt Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOap_uid()J
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mOap_uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPwdtime()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mPwdtime Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSid()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mSid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTicket()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mTicket Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUap_uid()J
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUap_uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUnit_id()I
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUnit_id I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUnitcode()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUnitcode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUser_name()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUser_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUser_nick_name()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUser_nick_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUser_pass()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUser_pass Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUser_pass_md5()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUser_pass_md5 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUser_pass_mixed_md5()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mUser_pass_mixed_md5 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getVar_ext()Ljava/lang/String;
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mVar_ext Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public init()V
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mUser_name Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mUser_pass Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mUser_pass_md5 Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mUser_pass_mixed_md5 Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mTicket Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mBlowfish Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mSid Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mUser_nick_name Ljava/lang/String;
aload 0
iconst_1
putfield com/product/android/business/login/JobNumberUserInfo/mIs_save_account Z
aload 0
iconst_1
putfield com/product/android/business/login/JobNumberUserInfo/mIs_auto_login Z
aload 0
iconst_0
putfield com/product/android/business/login/JobNumberUserInfo/mIs_phone I
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mUnitcode Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mPwdtime Ljava/lang/String;
aload 0
lconst_0
putfield com/product/android/business/login/JobNumberUserInfo/mUap_uid J
aload 0
ldc ""
putfield com/product/android/business/login/JobNumberUserInfo/mBindUapAccount Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method public isIs_auto_login()Z
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mIs_auto_login Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isIs_save_account()Z
aload 0
getfield com/product/android/business/login/JobNumberUserInfo/mIs_save_account Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setBindUapAccount(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mBindUapAccount Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setBlowfish(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mBlowfish Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setIdentity(I)V
aload 0
iload 1
putfield com/product/android/business/login/JobNumberUserInfo/mIdentity I
return
.limit locals 2
.limit stack 2
.end method

.method public setIs_auto_login(Z)V
aload 0
iload 1
putfield com/product/android/business/login/JobNumberUserInfo/mIs_auto_login Z
return
.limit locals 2
.limit stack 2
.end method

.method public setIs_phone(I)V
aload 0
iload 1
putfield com/product/android/business/login/JobNumberUserInfo/mIs_phone I
return
.limit locals 2
.limit stack 2
.end method

.method public setIs_save_account(Z)V
aload 0
iload 1
putfield com/product/android/business/login/JobNumberUserInfo/mIs_save_account Z
return
.limit locals 2
.limit stack 2
.end method

.method public setLast_login_dt(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mLast_login_dt Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setOap_uid(J)V
aload 0
lload 1
putfield com/product/android/business/login/JobNumberUserInfo/mOap_uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setPwdtime(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mPwdtime Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mSid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTicket(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mTicket Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUap_uid(J)V
aload 0
lload 1
putfield com/product/android/business/login/JobNumberUserInfo/mUap_uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUnit_id(I)V
aload 0
iload 1
putfield com/product/android/business/login/JobNumberUserInfo/mUnit_id I
return
.limit locals 2
.limit stack 2
.end method

.method public setUnitcode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mUnitcode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUser_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mUser_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUser_nick_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mUser_nick_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUser_pass(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mUser_pass Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUser_pass_md5(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mUser_pass_md5 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUser_pass_mixed_md5(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mUser_pass_mixed_md5 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setVar_ext(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/business/login/JobNumberUserInfo/mVar_ext Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
