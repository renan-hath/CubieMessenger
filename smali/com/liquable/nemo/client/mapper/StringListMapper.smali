.class public final enum Lcom/liquable/nemo/client/mapper/StringListMapper;
.super Ljava/lang/Enum;
.source "StringListMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/StringListMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/StringListMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/StringListMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/liquable/nemo/client/mapper/StringListMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/StringListMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/StringListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/StringListMapper;

    .line 5
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/StringListMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/StringListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/StringListMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/StringListMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/StringListMapper;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/StringListMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/liquable/nemo/client/mapper/StringListMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/StringListMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/StringListMapper;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/liquable/nemo/client/mapper/StringListMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/StringListMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/StringListMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/StringListMapper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/StringListMapper;->map(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    return-object p1
.end method
