.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/OapClassRelation
.super java/lang/Object

.field public static final 'GUARDIAN' I = 3


.field public static final 'MASTER' I = 1


.field public static final 'STUDENT' I = 2


.field private 'classid' I

.field private 'course_name' Ljava/lang/String;

.field private 'courseid' I

.field private 'fid' J

.field private 'privilege' I

.field private 'studentId' Ljava/lang/String;

.field private 'studentName' Ljava/lang/String;

.field private 'type' I

.field private 'uid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Lcom/nd/android/u/contact/dataStructure/OapJMClassRelation;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/getClassid()I
putfield com/nd/android/u/contact/dataStructure/OapClassRelation/classid I
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/getFid()J
putfield com/nd/android/u/contact/dataStructure/OapClassRelation/fid J
return
.limit locals 2
.limit stack 3
.end method

.method public getClassid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClassRelation/classid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCourse_name()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClassRelation/course_name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCourseid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClassRelation/courseid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClassRelation/fid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPrivilege()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClassRelation/privilege I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getStudentId()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClassRelation/studentId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getStudentName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClassRelation/studentName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()I
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClassRelation/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/OapClassRelation/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public setClassid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClassRelation/classid I
return
.limit locals 2
.limit stack 2
.end method

.method public setCourse_name(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapClassRelation/course_name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCourseid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClassRelation/courseid I
return
.limit locals 2
.limit stack 2
.end method

.method public setFid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapClassRelation/fid J
return
.limit locals 3
.limit stack 3
.end method

.method public setPrivilege(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClassRelation/privilege I
return
.limit locals 2
.limit stack 2
.end method

.method public setStudentId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapClassRelation/studentId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setStudentName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/OapClassRelation/studentName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/OapClassRelation/type I
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/OapClassRelation/uid J
return
.limit locals 3
.limit stack 3
.end method
