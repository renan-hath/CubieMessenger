.class public Lcom/liquable/nemo/opus/OpusException;
.super Ljava/lang/Exception;
.source "OpusException.java"


# static fields
.field private static final serialVersionUID:J = 0x516f3b40afe21f6eL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
