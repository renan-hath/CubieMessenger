.class public Lcom/google/ads/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-string/jumbo v0, "content://com.google.plus.platform/token"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/ads/as;->a:Landroid/net/Uri;

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "drt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/as;->b:[Ljava/lang/String;

    return-void
.end method
