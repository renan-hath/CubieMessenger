.class public Lcom/aviary/android/feather/library/filters/TiltShiftFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeToolFilter;
.source "TiltShiftFilter.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 13
    const-string/jumbo v0, "tiltshift"

    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;->TiltShift:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;

    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;-><init>(Ljava/lang/String;Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;)V

    .line 14
    sget-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->None:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/filters/TiltShiftFilter;->setTiltShiftMode(Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;)Z

    .line 15
    return-void
.end method
