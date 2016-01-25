.class public Lcom/liquable/nemo/storage/aws/S3EndPointPickUnstableException;
.super Ljava/lang/Exception;
.source "S3EndPointPickUnstableException.java"


# static fields
.field private static final serialVersionUID:J = -0x4a9fc70a01fcf16eL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "too many download failed"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method
