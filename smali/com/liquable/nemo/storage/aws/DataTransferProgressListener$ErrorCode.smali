.class public final enum Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;
.super Ljava/lang/Enum;
.source "DataTransferProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

.field public static final enum INVALID_TOKEN:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

.field public static final enum NO_SUCH_KEY:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

.field public static final enum TRANSFER_ERROR:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

.field public static final enum UNKNOWN:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    const-string/jumbo v1, "INVALID_TOKEN"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->INVALID_TOKEN:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    new-instance v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    const-string/jumbo v1, "TRANSFER_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->TRANSFER_ERROR:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    new-instance v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    const-string/jumbo v1, "NO_SUCH_KEY"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->NO_SUCH_KEY:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    new-instance v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->UNKNOWN:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    sget-object v1, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->INVALID_TOKEN:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->TRANSFER_ERROR:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->NO_SUCH_KEY:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->UNKNOWN:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->$VALUES:[Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->$VALUES:[Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    invoke-virtual {v0}, [Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    return-object v0
.end method
