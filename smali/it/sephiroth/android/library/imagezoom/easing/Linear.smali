.class public Lit/sephiroth/android/library/imagezoom/easing/Linear;
.super Ljava/lang/Object;
.source "Linear.java"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/easing/Easing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public easeIn(DDDD)D
    .locals 2
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 16
    mul-double v0, p5, p1

    div-double/2addr v0, p7

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public easeInOut(DDDD)D
    .locals 2
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 21
    mul-double v0, p5, p1

    div-double/2addr v0, p7

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public easeNone(DDDD)D
    .locals 2
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 6
    mul-double v0, p5, p1

    div-double/2addr v0, p7

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public easeOut(DDDD)D
    .locals 2
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 11
    mul-double v0, p5, p1

    div-double/2addr v0, p7

    add-double/2addr v0, p3

    return-wide v0
.end method
