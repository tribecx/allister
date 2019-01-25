module ApplicationHelper
    def get_logo_src
        'https://s3.amazonaws.com/allistercontent/static_assets/allister-logo.svg?response-content-disposition=inline&X-Amz-Security-Token=FQoGZXIvYXdzEL3%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDOf22EgvJ9dYp4YiIyK4A82KOZuy4Ypc%2FV7xxu3VhUMGGwIs%2FeVPAADv%2BcMUykYqA%2F8WF2kaEqHt9kmgCZh0mEZeKsBTO8cx5I0h0GWADoNgxO5%2BZvbfmOQkFUkXB7fvFkP13t301aLVGQs1vps9AAIqoEN%2Bhxjc1LFq7Albt3XgKb8hlsIo%2Bvbm321c5egKmhCsnxjffWtKKBv%2F21rdXnvrlOJOX9diGvg9S87TL0s53MIjp60J2KTSNFREDJXCkEXbf7EvWWaKOKFNQHtt0zKJDawgyjdelWicCT5UIfyc8w9ZOc4YXOoau6r554JrY8XOErBpT068dUlmQKco8JaRRXzxRM4jSRGN3OEgfVB52zWQF0kvlpmaqO8l7EAiaz3DEGCwzKRUcqENMq4qsHp1aLTam6gW1Qxy1LCGDg4TuX3BxD8l2lZwqmAMHI0No4zudG5xgwWuFW%2BavUUPq0vPj%2FUovu8yKS23%2Fy534g3uN5HHYcDbHGjMgNv38WzEaQ92p8%2FT%2FIN1RQQf97cas6E7w%2FuISHQ3%2B2iYqcfmuPgYiQpYCEXOx9KrnQnPVOjY2SzNuwDOJ%2BMYsUZFVwa7nzrRm2w3eoVVKNnBreIF&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20190125T204605Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIA6HWB6KQRNRWQ26VE%2F20190125%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=6d3f2287fd5c9ee5a6ff2255c89558126bdfbc79751a80008982de01afbe2246'
    end
      
    def s3_image_tag(filename, options={})
        image_tag(s3_image_path(filename), options)
    end
end
