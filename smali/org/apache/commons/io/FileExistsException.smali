.class public Lorg/apache/commons/io/FileExistsException;
.super Ljava/io/IOException;
.source "FileExistsException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method
