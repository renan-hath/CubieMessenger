.class public final enum Lcom/liquable/nemo/endpoint/frame/StopConnectionType;
.super Ljava/lang/Enum;
.source "StopConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/endpoint/frame/StopConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

.field public static final enum PRESENCE_OVERRIDED:Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

.field public static final enum UNKNOWN_CODE:Lcom/liquable/nemo/endpoint/frame/StopConnectionType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    const-string/jumbo v1, "PRESENCE_OVERRIDED"

    invoke-direct {v0, v1, v3, v3}, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->PRESENCE_OVERRIDED:Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    new-instance v0, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    const-string/jumbo v1, "UNKNOWN_CODE"

    const/16 v2, 0x62

    invoke-direct {v0, v1, v4, v2}, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->UNKNOWN_CODE:Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    sget-object v1, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->PRESENCE_OVERRIDED:Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->UNKNOWN_CODE:Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->$VALUES:[Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->code:I

    .line 19
    return-void
.end method

.method static getByCode(I)Lcom/liquable/nemo/endpoint/frame/StopConnectionType;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 7
    invoke-static {}, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->values()[Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 8
    .local v0, "type":Lcom/liquable/nemo/endpoint/frame/StopConnectionType;
    iget v4, v0, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->code:I

    if-ne v4, p0, :cond_0

    .line 12
    .end local v0    # "type":Lcom/liquable/nemo/endpoint/frame/StopConnectionType;
    :goto_1
    return-object v0

    .line 7
    .restart local v0    # "type":Lcom/liquable/nemo/endpoint/frame/StopConnectionType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    .end local v0    # "type":Lcom/liquable/nemo/endpoint/frame/StopConnectionType;
    :cond_1
    sget-object v0, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->UNKNOWN_CODE:Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/frame/StopConnectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/endpoint/frame/StopConnectionType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->$VALUES:[Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->code:I

    return v0
.end method
