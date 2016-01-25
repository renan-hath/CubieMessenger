.class final enum Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;
.super Ljava/lang/Enum;
.source "CubieHeadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/cubiehead/CubieHeadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Msg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

.field public static final enum CLEAR:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

.field public static final enum DISMISS:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

.field public static final enum HIDE:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

.field public static final enum HIDE_CHATTING_LITE:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

.field public static final enum NEW:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

.field public static final enum SHOW:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->NEW:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    new-instance v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    const-string/jumbo v1, "SHOW"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->SHOW:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    new-instance v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    const-string/jumbo v1, "HIDE"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->HIDE:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    new-instance v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    const-string/jumbo v1, "CLEAR"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->CLEAR:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    new-instance v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    const-string/jumbo v1, "DISMISS"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->DISMISS:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    new-instance v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    const-string/jumbo v1, "HIDE_CHATTING_LITE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->HIDE_CHATTING_LITE:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    sget-object v1, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->NEW:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->SHOW:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->HIDE:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->CLEAR:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->DISMISS:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->HIDE_CHATTING_LITE:Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->$VALUES:[Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toStrings()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "msgValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->values()[Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 41
    .local v0, "msg":Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;
    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "msg":Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;
    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->$VALUES:[Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    invoke-virtual {v0}, [Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/cubiehead/CubieHeadService$Msg;

    return-object v0
.end method
