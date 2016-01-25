.class public Lcom/liquable/nemo/util/MotionEventUtils;
.super Ljava/lang/Object;
.source "MotionEventUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/MotionEventUtils$WrappedStaticMotionEvent;
    }
.end annotation


# static fields
.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static sMultiTouchApiAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 72
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    const-string/jumbo v2, "getPointerId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    const/4 v1, 0x1

    sput-boolean v1, Lcom/liquable/nemo/util/MotionEventUtils;->sMultiTouchApiAvailable:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 74
    .end local v0    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 75
    .restart local v0    # "nsme":Ljava/lang/NoSuchMethodException;
    sput-boolean v6, Lcom/liquable/nemo/util/MotionEventUtils;->sMultiTouchApiAvailable:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p0, "ev"    # Landroid/view/MotionEvent;
    .param p1, "pointerId"    # I

    .prologue
    .line 29
    sget-boolean v0, Lcom/liquable/nemo/util/MotionEventUtils;->sMultiTouchApiAvailable:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p0, p1}, Lcom/liquable/nemo/util/MotionEventUtils$WrappedStaticMotionEvent;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p0, "ev"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 37
    sget-boolean v0, Lcom/liquable/nemo/util/MotionEventUtils;->sMultiTouchApiAvailable:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0, p1}, Lcom/liquable/nemo/util/MotionEventUtils$WrappedStaticMotionEvent;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p0, "ev"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 45
    sget-boolean v0, Lcom/liquable/nemo/util/MotionEventUtils;->sMultiTouchApiAvailable:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0, p1}, Lcom/liquable/nemo/util/MotionEventUtils$WrappedStaticMotionEvent;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p0, "ev"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 53
    sget-boolean v0, Lcom/liquable/nemo/util/MotionEventUtils;->sMultiTouchApiAvailable:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p0, p1}, Lcom/liquable/nemo/util/MotionEventUtils$WrappedStaticMotionEvent;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method
