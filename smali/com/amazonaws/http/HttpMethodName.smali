.class public final enum Lcom/amazonaws/http/HttpMethodName;
.super Ljava/lang/Enum;
.source "HttpMethodName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/http/HttpMethodName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/http/HttpMethodName;

.field public static final enum DELETE:Lcom/amazonaws/http/HttpMethodName;

.field public static final enum GET:Lcom/amazonaws/http/HttpMethodName;

.field public static final enum HEAD:Lcom/amazonaws/http/HttpMethodName;

.field public static final enum POST:Lcom/amazonaws/http/HttpMethodName;

.field public static final enum PUT:Lcom/amazonaws/http/HttpMethodName;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/amazonaws/http/HttpMethodName;

    const-string/jumbo v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    new-instance v0, Lcom/amazonaws/http/HttpMethodName;

    const-string/jumbo v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    new-instance v0, Lcom/amazonaws/http/HttpMethodName;

    const-string/jumbo v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    new-instance v0, Lcom/amazonaws/http/HttpMethodName;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    new-instance v0, Lcom/amazonaws/http/HttpMethodName;

    const-string/jumbo v1, "HEAD"

    invoke-direct {v0, v1, v6}, Lcom/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazonaws/http/HttpMethodName;

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->$VALUES:[Lcom/amazonaws/http/HttpMethodName;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/http/HttpMethodName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/amazonaws/http/HttpMethodName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/http/HttpMethodName;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/http/HttpMethodName;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->$VALUES:[Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {v0}, [Lcom/amazonaws/http/HttpMethodName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/http/HttpMethodName;

    return-object v0
.end method
