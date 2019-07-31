.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/OapUser
.super java/lang/Object
.implements java/io/Serializable

.field public static final 'FEMALE' I = 2


.field public static final 'MALE' I = 1


.field public static final 'OPEN_TO_FRIENDS' I = 1


.field public static final 'OPEN_TO_NOONE' I = 0


.field public static final 'OPEN_TO_PUBLIC' I = 2


.field public static final 'SECRET' I = 0


.field private static final 'serialVersionUID' J = 1L


.field private 'address' Ljava/lang/String;

.field private 'birthday' Ljava/lang/String;

.field private 'blood' Ljava/lang/String;

.field private 'city' Ljava/lang/String;

.field private 'classid' I

.field private 'contact_open' I

.field private 'course_name' Ljava/lang/String;

.field private 'courseid' I

.field private 'depts' Ljava/lang/String;

.field private 'description' Ljava/lang/String;

.field private 'duty' Ljava/lang/String;

.field private 'email' Ljava/lang/String;

.field private 'fax' Ljava/lang/String;

.field private 'fid' J

.field private 'gender' I

.field private 'guardians' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field private 'hasGuide' Z

.field private 'highschoolCode' Ljava/lang/String;

.field private 'imageUrl' Ljava/lang/String;

.field private 'isactive' I

.field private 'joindate' Ljava/lang/String;

.field private 'mobilephone' Ljava/lang/String;

.field private 'nativePlaceCode' Ljava/lang/String;

.field private 'nickname' Ljava/lang/String;

.field private 'note' Ljava/lang/String;

.field private 'postcode' Ljava/lang/String;

.field private 'province' Ljava/lang/String;

.field private 'seniorSchool' Ljava/lang/String;

.field private 'signature' Ljava/lang/String;

.field private 'site' Ljava/lang/String;

.field private 'spell1' Ljava/lang/String;

.field private 'spell2' Ljava/lang/String;

.field private 'studentid' Ljava/lang/String;

.field private 'sysavatar' I

.field private 'telephone' Ljava/lang/String;

.field private 'type' I

.field private 'uap_uid' J

.field private 'uid' J

.field private 'unitName' Ljava/lang/String;

.field private 'unitid' I

.field private 'updatetime' Ljava/lang/String;

.field private 'usercount' I

.field private 'username' Ljava/lang/String;

.field private 'userver' I

.field private 'workid' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/OapUser/isactive I
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/spell1 Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/spell2 Ljava/lang/String;
aload 0
aconst_null
putfield com/product/android/commonInterface/contact/OapUser/imageUrl Ljava/lang/String;
aload 0
invokevirtual com/product/android/commonInterface/contact/OapUser/initValue()V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/OapUser/isactive I
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/spell1 Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/spell2 Ljava/lang/String;
aload 0
aconst_null
putfield com/product/android/commonInterface/contact/OapUser/imageUrl Ljava/lang/String;
aload 0
invokevirtual com/product/android/commonInterface/contact/OapUser/initValue()V
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/initValueByUnit(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getAddress()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/address Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/address Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/address Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/address Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getAge()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
invokestatic com/product/android/utils/TimeUtils/getAgeByBirthday(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBirthday()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
ldc "0000-00-00"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
ldc "-"
areturn
L2:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getBirthdayToDate()Ljava/util/Date;
.catch java/lang/RuntimeException from L0 to L1 using L2
.catch java/lang/Error from L0 to L1 using L3
aload 0
getfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
ifnull L4
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
L4:
aconst_null
areturn
L5:
ldc "//^[\\d]{4}[-\\ ][\\d]{1,2}[-\\ ][\\d]{1,2}$//"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ifne L4
L0:
new java/util/Date
dup
aload 0
getfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
ldc "-"
ldc "/"
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokespecial java/util/Date/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
L3:
astore 1
aconst_null
areturn
.limit locals 2
.limit stack 5
.end method

.method public getBlood()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/blood Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/blood Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/blood Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/blood Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getCity()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/city Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/city Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/city Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/city Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getClassid()I
aload 0
getfield com/product/android/commonInterface/contact/OapUser/classid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getComment()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
ifnull L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/product/android/commonInterface/contact/OapUser/fid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getContactOpen()I
aload 0
getfield com/product/android/commonInterface/contact/OapUser/contact_open I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCourse_name()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/course_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCourseid()I
aload 0
getfield com/product/android/commonInterface/contact/OapUser/courseid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDepts()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getDescription()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/description Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/description Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/description Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/description Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getDuty()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/duty Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEmail()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/email Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/email Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/email Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/email Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getFax()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/fax Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFid()J
aload 0
getfield com/product/android/commonInterface/contact/OapUser/fid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getGender()I
aload 0
getfield com/product/android/commonInterface/contact/OapUser/gender I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGuardians()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/guardians Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGuideFlag()Z
aload 0
getfield com/product/android/commonInterface/contact/OapUser/hasGuide Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getHighschoolCode()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/highschoolCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIsactive()I
aload 0
getfield com/product/android/commonInterface/contact/OapUser/isactive I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getJoindate()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/joindate Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/joindate Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/joindate Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/joindate Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getMobilehone()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/mobilephone Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/mobilephone Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/mobilephone Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/mobilephone Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getNDUap_uid()J
aload 0
getfield com/product/android/commonInterface/contact/OapUser/fid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getNativePlaceCode()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/nativePlaceCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNickname()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/nickname Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/nickname Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/nickname Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/nickname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getNote()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/note Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOapUnitRelations()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;"
.catch java/lang/RuntimeException from L0 to L1 using L2
.catch java/lang/RuntimeException from L1 to L3 using L2
.catch java/lang/RuntimeException from L4 to L5 using L2
iconst_0
istore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
getfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
ifnull L6
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
L6:
new com/product/android/commonInterface/contact/OapUnitRelation
dup
invokespecial com/product/android/commonInterface/contact/OapUnitRelation/<init>()V
astore 4
aload 4
aload 0
invokevirtual com/product/android/commonInterface/contact/OapUser/getUid()J
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setUid(J)V
aload 4
aload 0
getfield com/product/android/commonInterface/contact/OapUser/fid J
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setFid(J)V
aload 4
aload 0
getfield com/product/android/commonInterface/contact/OapUser/unitid I
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setUnitid(I)V
aload 4
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setDeptid(I)V
aload 4
aload 0
getfield com/product/android/commonInterface/contact/OapUser/updatetime Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setUpdatetime(Ljava/lang/String;)V
aload 3
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L8:
aload 3
areturn
L7:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 4
aload 4
ifnull L8
aload 4
arraylength
istore 2
L9:
iload 1
iload 2
if_icmpge L8
aload 4
iload 1
aaload
astore 6
new com/product/android/commonInterface/contact/OapUnitRelation
dup
invokespecial com/product/android/commonInterface/contact/OapUnitRelation/<init>()V
astore 5
aload 5
aload 0
invokevirtual com/product/android/commonInterface/contact/OapUser/getUid()J
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setUid(J)V
aload 5
aload 0
getfield com/product/android/commonInterface/contact/OapUser/fid J
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setFid(J)V
aload 5
aload 0
getfield com/product/android/commonInterface/contact/OapUser/unitid I
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setUnitid(I)V
aload 5
aload 0
getfield com/product/android/commonInterface/contact/OapUser/updatetime Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setUpdatetime(Ljava/lang/String;)V
aload 6
invokevirtual java/lang/String/length()I
iconst_1
if_icmple L10
L0:
aload 6
iconst_1
aload 6
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 6
aload 6
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L4
aload 5
aload 6
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setDeptid(I)V
L1:
aload 3
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
goto L10
L4:
aload 5
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setDeptid(I)V
L5:
goto L1
L2:
astore 5
aload 5
invokevirtual java/lang/RuntimeException/printStackTrace()V
L10:
iload 1
iconst_1
iadd
istore 1
goto L9
.limit locals 7
.limit stack 4
.end method

.method public getPhone()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/telephone Ljava/lang/String;
ifnull L0
aload 0
getfield com/product/android/commonInterface/contact/OapUser/telephone Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/telephone Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/product/android/commonInterface/contact/OapUser/telephone Ljava/lang/String;
areturn
L0:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/mobilephone Ljava/lang/String;
ifnull L1
aload 0
getfield com/product/android/commonInterface/contact/OapUser/mobilephone Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/mobilephone Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
getfield com/product/android/commonInterface/contact/OapUser/mobilephone Ljava/lang/String;
areturn
L1:
ldc ""
areturn
.limit locals 1
.limit stack 2
.end method

.method public getPostcode()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/postcode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getProvince()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/province Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/province Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/province Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/province Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getSeniorSchool()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/seniorSchool Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/seniorSchool Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/seniorSchool Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/seniorSchool Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getSex()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/gender I
tableswitch 0
L0
L1
L2
default : L3
L3:
ldc "\u5973"
areturn
L0:
ldc "\u5973"
areturn
L1:
ldc "\u7537"
areturn
L2:
ldc "\u5973"
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSignature()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/signature Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSite()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/site Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSpell1()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/spell1 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSpell2()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/spell2 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getStudentid()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/studentid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSysavatar()I
aload 0
getfield com/product/android/commonInterface/contact/OapUser/sysavatar I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTelephone()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/telephone Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/telephone Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/telephone Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/telephone Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getType()I
aload 0
getfield com/product/android/commonInterface/contact/OapUser/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUap_uid()J
aload 0
getfield com/product/android/commonInterface/contact/OapUser/uap_uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUid()J
aload 0
getfield com/product/android/commonInterface/contact/OapUser/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUnitName()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/unitName Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/unitName Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/unitName Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/unitName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getUnitid()I
aload 0
getfield com/product/android/commonInterface/contact/OapUser/unitid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUpdatetime()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/updatetime Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserName()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
ifnull L0
ldc "null"
aload 0
getfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc ""
aload 0
getfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
ldc ""
areturn
L1:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getUsercount()I
aload 0
getfield com/product/android/commonInterface/contact/OapUser/usercount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUserver()I
aload 0
getfield com/product/android/commonInterface/contact/OapUser/userver I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getWorkid()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/workid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public initBaseInfo(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/OapUser/fid J
aload 0
aload 1
ldc "uap_uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/OapUser/uap_uid J
aload 0
aload 1
ldc "username"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
aload 0
aload 1
ldc "nickname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/nickname Ljava/lang/String;
aload 0
aload 1
ldc "workid"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/workid Ljava/lang/String;
aload 0
aload 1
ldc "type"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/type I
aload 0
aload 1
ldc "joindate"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/joindate Ljava/lang/String;
aload 0
aload 1
ldc "duty"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/duty Ljava/lang/String;
aload 0
aload 1
ldc "gender"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/gender I
aload 0
aload 1
ldc "telephone"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/telephone Ljava/lang/String;
aload 0
aload 1
ldc "mobilephone"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/mobilephone Ljava/lang/String;
aload 0
aload 1
ldc "email"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/email Ljava/lang/String;
aload 0
aload 1
ldc "signature"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/signature Ljava/lang/String;
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/updatetime Ljava/lang/String;
aload 0
aload 1
ldc "isactive"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/isactive I
aload 0
aload 1
ldc "sysavatar"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/sysavatar I
aload 0
aload 1
ldc "unitid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/unitid I
aload 0
aload 1
ldc "unitname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/unitName Ljava/lang/String;
aload 0
aload 1
ldc "studentid"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/studentid Ljava/lang/String;
aload 0
aload 1
ldc "spell1"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/spell1 Ljava/lang/String;
aload 0
aload 1
ldc "spell2"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/spell2 Ljava/lang/String;
aload 0
aload 1
ldc "birthday"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
aload 0
aload 1
ldc "contact_open"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/contact_open I
return
.limit locals 2
.limit stack 3
.end method

.method public initExtInfo(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "gender"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/gender I
aload 0
aload 1
ldc "fax"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/fax Ljava/lang/String;
aload 0
aload 1
ldc "birthday"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
aload 0
aload 1
ldc "blood"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/blood Ljava/lang/String;
aload 0
aload 1
ldc "site"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/site Ljava/lang/String;
aload 0
aload 1
ldc "description"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/description Ljava/lang/String;
aload 0
aload 1
ldc "postcode"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/postcode Ljava/lang/String;
aload 0
aload 1
ldc "addr"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/address Ljava/lang/String;
aload 0
aload 1
ldc "province"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/province Ljava/lang/String;
aload 0
aload 1
ldc "city"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/city Ljava/lang/String;
aload 1
ldc "emails"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual org/json/JSONArray/length()I
ifle L0
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public initValue()V
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/nickname Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/signature Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/joindate Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/telephone Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/mobilephone Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/email Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/updatetime Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/unitName Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/note Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/address Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/fax Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/blood Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/site Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/description Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/postcode Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/workid Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/duty Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/studentid Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/course_name Ljava/lang/String;
aload 0
iconst_0
putfield com/product/android/commonInterface/contact/OapUser/contact_open I
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/province Ljava/lang/String;
aload 0
ldc ""
putfield com/product/android/commonInterface/contact/OapUser/city Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public initValueByFriend(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/OapUser/fid J
aload 0
aload 1
ldc "uap_uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/OapUser/uap_uid J
aload 0
aload 1
ldc "username"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
aload 0
aload 1
ldc "nickname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/nickname Ljava/lang/String;
aload 0
aload 1
ldc "signature"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/signature Ljava/lang/String;
aload 0
aload 1
ldc "note"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/note Ljava/lang/String;
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/updatetime Ljava/lang/String;
aload 0
aload 1
ldc "sysavatar"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/sysavatar I
aload 0
aload 1
ldc "isactive"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/isactive I
aload 0
aload 1
ldc "spell1"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/spell1 Ljava/lang/String;
aload 0
aload 1
ldc "spell2"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/spell2 Ljava/lang/String;
aload 0
aload 1
ldc "birthday"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public initValueByStudent(Lorg/json/JSONObject;)V
aload 1
ldc "guardians"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
ifnull L0
aload 0
getfield com/product/android/commonInterface/contact/OapUser/guardians Ljava/util/List;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/product/android/commonInterface/contact/OapUser/guardians Ljava/util/List;
L1:
iconst_0
istore 2
L2:
iload 2
aload 1
invokevirtual org/json/JSONArray/length()I
if_icmpge L0
aload 1
iload 2
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 3
aload 3
ifnull L3
new com/product/android/commonInterface/contact/OapUser
dup
invokespecial com/product/android/commonInterface/contact/OapUser/<init>()V
astore 4
aload 4
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/initBaseInfo(Lorg/json/JSONObject;)V
aload 4
iconst_3
invokevirtual com/product/android/commonInterface/contact/OapUser/setType(I)V
aload 0
getfield com/product/android/commonInterface/contact/OapUser/guardians Ljava/util/List;
ifnonnull L4
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/product/android/commonInterface/contact/OapUser/guardians Ljava/util/List;
L4:
aload 0
getfield com/product/android/commonInterface/contact/OapUser/guardians Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
iload 2
iconst_1
iadd
istore 2
goto L2
L0:
return
.limit locals 5
.limit stack 3
.end method

.method public initValueByUnit(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/OapUser/fid J
aload 0
aload 1
ldc "uap_uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/OapUser/uap_uid J
aload 0
aload 1
ldc "username"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
aload 0
aload 1
ldc "nickname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/nickname Ljava/lang/String;
aload 0
aload 1
ldc "signature"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/signature Ljava/lang/String;
aload 0
aload 1
ldc "joindate"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/joindate Ljava/lang/String;
aload 0
aload 1
ldc "gender"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/gender I
aload 0
aload 1
ldc "telephone"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/telephone Ljava/lang/String;
aload 0
aload 1
ldc "mobilephone"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/mobilephone Ljava/lang/String;
aload 0
aload 1
ldc "email"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/email Ljava/lang/String;
aload 0
aload 1
ldc "updatetime"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/updatetime Ljava/lang/String;
aload 0
aload 1
ldc "workid"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/workid Ljava/lang/String;
aload 0
aload 1
ldc "depts"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
aload 0
aload 1
ldc "userver"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/userver I
aload 0
aload 1
ldc "class_id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/classid I
aload 0
getfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
aload 0
getfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
ldc "\""
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
L0:
aload 0
aload 1
ldc "unitname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/unitName Ljava/lang/String;
aload 0
aload 1
ldc "sysavatar"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/sysavatar I
aload 0
aload 1
ldc "studentid"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/studentid Ljava/lang/String;
aload 0
aload 1
ldc "spell1"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/spell1 Ljava/lang/String;
aload 0
aload 1
ldc "spell2"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/spell2 Ljava/lang/String;
aload 0
aload 1
ldc "birthday"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
aload 0
aload 1
ldc "unitid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/unitid I
aload 0
aload 1
ldc "contact_open"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUser/contact_open I
return
.limit locals 2
.limit stack 4
.end method

.method public setAddress(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/address Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setBirthday(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/birthday Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setBlood(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/blood Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCity(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/city Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setClassid(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapUser/classid I
return
.limit locals 2
.limit stack 2
.end method

.method public setContactOpen(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapUser/contact_open I
return
.limit locals 2
.limit stack 2
.end method

.method public setCourse_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/course_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCourseid(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapUser/courseid I
return
.limit locals 2
.limit stack 2
.end method

.method public setDepts(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/depts Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDescription(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/description Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDuty(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/duty Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setEmail(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/email Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFax(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/fax Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/OapUser/fid J
return
.limit locals 3
.limit stack 3
.end method

.method public setGender(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapUser/gender I
return
.limit locals 2
.limit stack 2
.end method

.method public setGuardians(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)V"
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/guardians Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setGuideFlag(Z)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapUser/hasGuide Z
return
.limit locals 2
.limit stack 2
.end method

.method public setHighschoolCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/highschoolCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setIsactive(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapUser/isactive I
return
.limit locals 2
.limit stack 2
.end method

.method public setJoindate(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/joindate Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMobilehone(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/mobilephone Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNativePlaceCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/nativePlaceCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNickname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/nickname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNote(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/note Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPostcode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/postcode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setProvince(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/province Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSeniorSchool(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/seniorSchool Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSignature(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/signature Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSite(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/site Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSpell1(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/spell1 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSpell2(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/spell2 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setStudentid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/studentid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSysavatar(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapUser/sysavatar I
return
.limit locals 2
.limit stack 2
.end method

.method public setTelephone(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/telephone Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapUser/type I
return
.limit locals 2
.limit stack 2
.end method

.method public setUap_uid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/OapUser/uap_uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/contact/OapUser/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUnitName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/unitName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUnitid(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapUser/unitid I
return
.limit locals 2
.limit stack 2
.end method

.method public setUpdatetime(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/updatetime Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUsercount(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapUser/usercount I
return
.limit locals 2
.limit stack 2
.end method

.method public setUsername(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserver(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/contact/OapUser/userver I
return
.limit locals 2
.limit stack 2
.end method

.method public setWorkid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/contact/OapUser/workid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
ldc "[oapuser]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",username="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/product/android/commonInterface/contact/OapUser/username Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method
