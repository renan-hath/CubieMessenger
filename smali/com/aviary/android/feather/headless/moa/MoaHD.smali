.class public Lcom/aviary/android/feather/headless/moa/MoaHD;
.super Ljava/lang/Object;
.source "MoaHD.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private disposed:Z

.field private m_ptr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0}, Lcom/aviary/android/feather/headless/moa/MoaHD;->m_nativeCtor()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/headless/moa/MoaHD;->m_ptr:J

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/headless/moa/MoaHD;->disposed:Z

    .line 61
    return-void
.end method

.method public static native m_getMaxBitmapSize(J)I
.end method

.method private native m_height(J)I
.end method

.method private native m_nativeApplyActions(JLjava/lang/String;)V
.end method

.method private native m_nativeCtor()J
.end method

.method private native m_nativeDispose(J)V
.end method

.method private native m_nativeIsLoaded(J)Z
.end method

.method private native m_nativeIsValid(J)Z
.end method

.method private native m_nativeLoad(JI)I
.end method

.method private native m_nativeLoad(JLjava/io/FileDescriptor;)I
.end method

.method private native m_nativeLoad(JLjava/io/InputStream;[B)I
.end method

.method private native m_nativeLoad(JLjava/lang/String;)I
.end method

.method private native m_nativeSave(JLjava/lang/String;)I
.end method

.method private native m_nativeSaveWithQualityAndConfig(JLjava/lang/String;II)I
.end method

.method private native m_nativeUnload(J)I
.end method

.method static native m_setMaxMegaPixels(JI)V
.end method

.method private native m_width(J)I
.end method
