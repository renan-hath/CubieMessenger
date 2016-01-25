.class public Lcom/amazonaws/services/s3/internal/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static DEFAULT_ENCODING:Ljava/lang/String;

.field public static S3_HOSTNAME:Ljava/lang/String;

.field public static S3_SERVICE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "s3.amazonaws.com"

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->S3_HOSTNAME:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "Amazon S3"

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->S3_SERVICE_NAME:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "UTF-8"

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    return-void
.end method
