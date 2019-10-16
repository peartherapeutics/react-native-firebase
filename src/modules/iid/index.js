/**
 * @flow
 * Instance ID representation wrapper
 */
import { Alert } from 'react-native';
import ModuleBase from '../../utils/ModuleBase';
import { getNativeModule } from '../../utils/native';

import type App from '../core/app';

export const NAMESPACE = 'iid';
export const MODULE_NAME = 'RNFirebaseInstanceId';

export default class InstanceId extends ModuleBase {
  constructor(app: App) {
    super(app, {
      hasCustomUrlSupport: false,
      moduleName: MODULE_NAME,
      hasMultiAppSupport: false,
      namespace: NAMESPACE,
    });
  }

  /**
   * Get the current Instance ID.
   *
   * @returns {*}
   */
  get(): Promise<string> {
    return getNativeModule(this).get();
  }

  /**
   * Delete the current Instance ID.
   *
   * @returns {*}
   */
  delete(): Promise<void> {
    return getNativeModule(this).delete();
  }

  /**
   * Get a token that authorizes an Entity to perform an action on behalf
   * of the application identified by Instance ID.
   *
   * @param authorizedEntity
   * @param scope
   * @returns {Promise<string>}
   */
  getToken(authorizedEntity?: string, scope?: string): Promise<string> {
    // mod start
    Alert.alert(
      'pear/react-native-firebase/src/modules/iid/index.js -> getToken'
    );
    return 'FAKE';
    // return getNativeModule(this).getToken(
    //   authorizedEntity || this.app.options.messagingSenderId,
    //   scope || '*'
    // );
    // mod end
  }

  /**
   * Revokes access to a scope (action) for an entity previously authorized by getToken().
   *
   * @param authorizedEntity
   * @param scope
   * @returns {Promise<void>}
   */
  deleteToken(authorizedEntity?: string, scope?: string): Promise<void> {
    // mod start
    Alert.alert(
      'pear/react-native-firebase/src/modules/iid/index.js -> deleteToken'
    );

    // return getNativeModule(this).deleteToken(
    //   authorizedEntity || this.app.options.messagingSenderId,
    //   scope || '*'
    // );
    // mod end
  }
}

export const statics = {};
