.class public final enum Lcom/liquable/nemo/client/mapper/StringMapper;
.super Ljava/lang/Enum;
.source "StringMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/StringMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/StringMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/StringMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/client/mapper/StringMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/StringMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/StringMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/StringMapper;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/StringMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/StringMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/StringMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/StringMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/StringMapper;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/StringMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/client/mapper/StringMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/StringMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/StringMapper;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/client/mapper/StringMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/StringMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/StringMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/StringMapper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/StringMapper;->map(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 8
    check-cast p1, Ljava/lang/String;

    .end local p1    # "result":Ljava/lang/Object;
    return-object p1
.end method
