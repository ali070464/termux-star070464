.class public final Lcom/google/common/net/InternetDomainName;
.super Ljava/lang/Object;
.source "InternetDomainName.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final DASH_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final DOTS_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final DOT_JOINER:Lcom/google/common/base/Joiner;

.field private static final DOT_REGEX:Ljava/lang/String; = "\\."

.field private static final DOT_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final MAX_DOMAIN_PART_LENGTH:I = 0x3f

.field private static final MAX_LENGTH:I = 0xfd

.field private static final MAX_PARTS:I = 0x7f

.field private static final NO_SUFFIX_FOUND:I = -0x1

.field private static final PART_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;


# instance fields
.field private final name:Ljava/lang/String;

.field private final parts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final publicSuffixIndex:I

.field private final registrySuffixIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    const-string v0, ".\u3002\uff0e\uff61"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->DOTS_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 80
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v1

    sput-object v1, Lcom/google/common/net/InternetDomainName;->DOT_SPLITTER:Lcom/google/common/base/Splitter;

    .line 81
    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->DOT_JOINER:Lcom/google/common/base/Joiner;

    .line 240
    const-string v0, "-_"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->DASH_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 243
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaLetterOrDigit()Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->PART_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 242
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    sget-object v0, Lcom/google/common/net/InternetDomainName;->DOTS_MATCHER:Lcom/google/common/base/CharMatcher;

    const/16 v1, 0x2e

    invoke-virtual {v0, p1, v1}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xfd

    if-gt v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "Domain name too long: \'%s\':"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 147
    iput-object p1, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/google/common/net/InternetDomainName;->DOT_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    .line 150
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const-string v2, "Domain has too many parts: \'%s\'"

    invoke-static {v1, v2, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-static {v0}, Lcom/google/common/net/InternetDomainName;->validateSyntax(Ljava/util/List;)Z

    move-result v0

    const-string v1, "Not a valid domain name: \'%s\'"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 153
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->findSuffixOfType(Lcom/google/common/base/Optional;)I

    move-result v0

    iput v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    .line 154
    sget-object v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->REGISTRY:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->findSuffixOfType(Lcom/google/common/base/Optional;)I

    move-result v0

    iput v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    .line 155
    return-void
.end method

.method private ancestor(I)Lcom/google/common/net/InternetDomainName;
    .locals 3
    .param p1, "levels"    # I

    .line 541
    sget-object v0, Lcom/google/common/net/InternetDomainName;->DOT_JOINER:Lcom/google/common/base/Joiner;

    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    return-object v0
.end method

.method private findSuffixOfType(Lcom/google/common/base/Optional;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;)I"
        }
    .end annotation

    .line 167
    .local p1, "desiredType":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/google/thirdparty/publicsuffix/PublicSuffixType;>;"
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    .line 169
    .local v0, "partsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 170
    sget-object v2, Lcom/google/common/net/InternetDomainName;->DOT_JOINER:Lcom/google/common/base/Joiner;

    iget-object v3, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v1, v0}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "ancestorName":Ljava/lang/String;
    sget-object v3, Lcom/google/thirdparty/publicsuffix/PublicSuffixPatterns;->EXACT:Lcom/google/common/collect/ImmutableMap;

    .line 173
    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 172
    invoke-static {p1, v3}, Lcom/google/common/net/InternetDomainName;->matchesType(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    return v1

    .line 180
    :cond_0
    sget-object v3, Lcom/google/thirdparty/publicsuffix/PublicSuffixPatterns;->EXCLUDED:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    add-int/lit8 v3, v1, 0x1

    return v3

    .line 184
    :cond_1
    invoke-static {p1, v2}, Lcom/google/common/net/InternetDomainName;->matchesWildcardSuffixType(Lcom/google/common/base/Optional;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    return v1

    .line 169
    .end local v2    # "ancestorName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method public static from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;

    .line 212
    new-instance v0, Lcom/google/common/net/InternetDomainName;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/common/net/InternetDomainName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 582
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    const/4 v0, 0x1

    return v0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method private static matchesType(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;)Z"
        }
    .end annotation

    .line 607
    .local p0, "desiredType":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/google/thirdparty/publicsuffix/PublicSuffixType;>;"
    .local p1, "actualType":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/google/thirdparty/publicsuffix/PublicSuffixType;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static matchesWildcardSuffixType(Lcom/google/common/base/Optional;Ljava/lang/String;)Z
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 595
    .local p0, "desiredType":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/google/thirdparty/publicsuffix/PublicSuffixType;>;"
    const-string v0, "\\."

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "pieces":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    sget-object v1, Lcom/google/thirdparty/publicsuffix/PublicSuffixPatterns;->UNDER:Lcom/google/common/collect/ImmutableMap;

    aget-object v2, v0, v3

    .line 598
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    .line 597
    invoke-static {p0, v1}, Lcom/google/common/net/InternetDomainName;->matchesType(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 596
    :goto_0
    return v3
.end method

.method private static validatePart(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "part"    # Ljava/lang/String;
    .param p1, "isFinalPart"    # Z

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x3f

    if-le v0, v3, :cond_0

    goto :goto_1

    .line 272
    :cond_0
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "asciiChars":Ljava/lang/String;
    sget-object v3, Lcom/google/common/net/InternetDomainName;->PART_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v3, v0}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    return v2

    .line 280
    :cond_1
    sget-object v3, Lcom/google/common/net/InternetDomainName;->DASH_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-nez v4, :cond_4

    .line 281
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 292
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/google/common/base/CharMatcher;->digit()Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 293
    return v2

    .line 296
    :cond_3
    return v1

    .line 282
    :cond_4
    :goto_0
    return v2

    .line 259
    .end local v0    # "asciiChars":Ljava/lang/String;
    :cond_5
    :goto_1
    return v2
.end method

.method private static validateSyntax(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 222
    .local p0, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 226
    .local v0, "lastIndex":I
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/common/net/InternetDomainName;->validatePart(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 227
    return v3

    .line 230
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 231
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 232
    .local v4, "part":Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/google/common/net/InternetDomainName;->validatePart(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 233
    return v3

    .line 230
    .end local v4    # "part":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v2    # "i":I
    :cond_2
    return v1
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;
    .locals 2
    .param p1, "leftParts"    # Ljava/lang/String;

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 623
    if-ne p1, p0, :cond_0

    .line 624
    const/4 v0, 0x1

    return v0

    .line 627
    :cond_0
    instance-of v0, p1, Lcom/google/common/net/InternetDomainName;

    if-eqz v0, :cond_1

    .line 628
    move-object v0, p1

    check-cast v0, Lcom/google/common/net/InternetDomainName;

    .line 629
    .local v0, "that":Lcom/google/common/net/InternetDomainName;
    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 632
    .end local v0    # "that":Lcom/google/common/net/InternetDomainName;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasParent()Z
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPublicSuffix()Z
    .locals 2

    .line 345
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRegistrySuffix()Z
    .locals 2

    .line 453
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPublicSuffix()Z
    .locals 1

    .line 329
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRegistrySuffix()Z
    .locals 1

    .line 438
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTopDomainUnderRegistrySuffix()Z
    .locals 2

    .line 490
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTopPrivateDomain()Z
    .locals 2

    .line 387
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUnderPublicSuffix()Z
    .locals 1

    .line 371
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnderRegistrySuffix()Z
    .locals 1

    .line 475
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parent()Lcom/google/common/net/InternetDomainName;
    .locals 3

    .line 529
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->hasParent()Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    const-string v2, "Domain \'%s\' has no parent"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 530
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    return-object v0
.end method

.method public parts()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public publicSuffix()Lcom/google/common/net/InternetDomainName;
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->hasPublicSuffix()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public registrySuffix()Lcom/google/common/net/InternetDomainName;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->hasRegistrySuffix()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public topDomainUnderRegistrySuffix()Lcom/google/common/net/InternetDomainName;
    .locals 3

    .line 509
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->isTopDomainUnderRegistrySuffix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    return-object p0

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->isUnderRegistrySuffix()Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    const-string v2, "Not under a registry suffix: %s"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 513
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    return-object v0
.end method

.method public topPrivateDomain()Lcom/google/common/net/InternetDomainName;
    .locals 3

    .line 407
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->isTopPrivateDomain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    return-object p0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->isUnderPublicSuffix()Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    const-string v2, "Not under a public suffix: %s"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 411
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    return-object v0
.end method
