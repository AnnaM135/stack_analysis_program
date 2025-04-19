; ModuleID = 'src/main.cpp'
source_filename = "src/main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"&local=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"&a=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"&b=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&y=%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"&f=%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"&g=%p\0A\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z1hv() #0 {
entry:
  %local = alloca i32, align 4
  store i32 5, ptr %local, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %local)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z1gii(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i32, ptr %b.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %y, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %a.addr)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %b.addr)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %y)
  %call3 = call noundef i32 @_Z1hv()
  %2 = load i32, ptr %y, align 4
  ret i32 %2
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z1fv() #0 {
entry:
  %call = call noundef i32 @_Z1hv()
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef @_Z1fv)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef @_Z1gii)
  ret i32 0
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
