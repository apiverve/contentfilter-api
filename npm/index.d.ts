declare module '@apiverve/contentfilter' {
  export interface contentfilterOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface contentfilterResponse {
    status: string;
    error: string | null;
    data: ContentFilterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ContentFilterData {
      url:           null | string;
      domain:        null | string;
      isBlocked:     boolean | null;
      category:      null | string;
      matchedDomain: null | string;
      safetyRating:  null | string;
  }

  export default class contentfilterWrapper {
    constructor(options: contentfilterOptions);

    execute(callback: (error: any, data: contentfilterResponse | null) => void): Promise<contentfilterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: contentfilterResponse | null) => void): Promise<contentfilterResponse>;
    execute(query?: Record<string, any>): Promise<contentfilterResponse>;
  }
}
